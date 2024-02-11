import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utils/ui/colors.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard(
      {super.key,
      required this.height,
      required this.alignment,
      this.width,
      this.margin,
      this.borderRadius});

  final double height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final Alignment alignment;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighlightColor,
      child: Align(
        alignment: alignment,
        child: Container(
          height: height,
          width: width,
          margin: margin,
          decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
              color: Colors.white),
        ),
      ),
    );
  }
}
