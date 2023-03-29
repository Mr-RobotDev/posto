import 'package:flutter/material.dart';
import 'package:posto/ui/common/ui_helpers.dart';

class ImageErrorWidget extends StatelessWidget {
  const ImageErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade300,
      width: screenWidth(context) * 0.8,
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.error,
            ),
            Text(
              'Error loading image',
            ),
          ],
        ),
      ),
    );
  }
}
