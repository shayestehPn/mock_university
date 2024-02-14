import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage(
      {super.key,
      required this.imageUrl,
      required this.height,
      required this.width,
      this.boxShape,
      this.borderRadius});

  final String imageUrl;
  final double height;
  final double width;
  final BoxShape? boxShape;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      imageBuilder: (context, imageProvider) => FittedBox(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            shape: boxShape ?? BoxShape.rectangle,
            borderRadius: borderRadius,
            image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
          ),
        ),
      ),
      placeholder: (context, url) => FittedBox(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              shape: boxShape ?? BoxShape.rectangle,
              borderRadius: borderRadius,
              color: Colors.grey.shade200),
        ),
      ),
      errorWidget: (context, url, error) => FittedBox(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: boxShape ?? BoxShape.rectangle,
              borderRadius: borderRadius,
              color: Colors.grey.shade200),
          child: const Icon(Icons.error_outline),
        ),
      ),
    );
  }
}
