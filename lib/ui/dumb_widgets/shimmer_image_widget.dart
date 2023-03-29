import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:posto/ui/common/app_strings.dart';
import 'package:posto/ui/dumb_widgets/image_error_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerImageWidget extends StatelessWidget {
  const ShimmerImageWidget({
    super.key,
    required this.url,
    required this.height,
  });

  final String url;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        height: height,
        imageUrl: url,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => const ImageErrorWidget(),
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: defaultShimmerBaseColor,
          highlightColor: defaultShimmerHighlightColor,
          child: Container(
            color: defaultShimmerBackColor,
          ),
        ),
      ),
    );
  }
}
