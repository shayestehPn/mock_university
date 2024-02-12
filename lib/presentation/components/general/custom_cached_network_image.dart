import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;

  const CustomCachedNetworkImage(
      {super.key,
      required this.imageUrl,
       this.height,
       this.width,
       this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: borderRadius??BorderRadius.zero,
        child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) => Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: Colors.grey[200],
                  ),
                ),
            errorWidget: (context, url, error) => Container(
                  width: width,
                  height: height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: Colors.grey[200],
                  ),
                  child: const Icon(Icons.error_outline),
                )),
      ),
    );
  }
}
