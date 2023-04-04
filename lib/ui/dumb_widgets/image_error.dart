import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:posto/ui/common/ui_helpers.dart';

class ImageError extends StatelessWidget {
  const ImageError({
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
          children: [
            const Icon(
              Icons.error,
            ),
            Text(
              AppLocalizations.of(context)!.errorLoadingImage,
            ),
          ],
        ),
      ),
    );
  }
}
