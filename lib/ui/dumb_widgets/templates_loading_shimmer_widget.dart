import 'package:flutter/material.dart';
import 'package:posto/ui/common/app_strings.dart';
import 'package:shimmer/shimmer.dart';

class TemplatesLoadingShimmerWidget extends StatelessWidget {
  const TemplatesLoadingShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 9 / 16,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: defaultShimmerBaseColor,
        highlightColor: defaultShimmerHighlightColor,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
