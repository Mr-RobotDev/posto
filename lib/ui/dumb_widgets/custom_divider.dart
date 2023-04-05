import 'package:flutter/material.dart';
import 'package:posto/ui/common/ui_helpers.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        verticalSpaceTiny,
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Divider(
            height: 0.1,
            color: Colors.grey,
          ),
        ),
        verticalSpaceTiny,
      ],
    );
  }
}
