import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:posto/ui/common/app_strings.dart';
import 'package:posto/ui/common/ui_helpers.dart';
import 'package:shimmer/shimmer.dart';

class TemplatesLoadingShimmer extends StatelessWidget {
  const TemplatesLoadingShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        itemCount: 10,
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: defaultShimmerBaseColor,
          highlightColor: defaultShimmerHighlightColor,
          child: Container(
            height: getMinHeight(index),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
