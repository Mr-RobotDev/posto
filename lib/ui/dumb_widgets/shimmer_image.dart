import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:posto/ui/common/app_strings.dart';
import 'package:posto/ui/dumb_widgets/image_error.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerImage extends StatelessWidget {
  const ShimmerImage({
    super.key,
    required this.url,
    this.height,
    this.width,
  });

  final String url;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        width: width,
        height: height,
        imageUrl: url,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => const ImageError(),
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: defaultShimmerBaseColor,
          highlightColor: defaultShimmerHighlightColor,
          child: Container(
            decoration: BoxDecoration(
              color: defaultShimmerBackColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
