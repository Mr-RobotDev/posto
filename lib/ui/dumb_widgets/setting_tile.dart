import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:posto/ui/common/ui_helpers.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    this.onTap,
    required this.icon,
    required this.title,
  });

  final VoidCallback? onTap;
  final IconData? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: isDarkModeTileColor(context),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            horizontalSpaceSmall,
            Text(
              title,
              style: TextStyle(
                color: isDarkModeTextColor(context),
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Icon(
              PlatformIcons(context).rightChevron,
              color: Colors.grey,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
