import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:posto/ui/common/ui_helpers.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    this.onTap,
    this.color,
    this.icon,
    required this.title,
  });

  final VoidCallback? onTap;
  final Color? color;
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
          vertical: 8,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(5),
              child: Icon(
                icon,
                color: Colors.white,
              ),
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
