import 'package:flutter/material.dart';
import 'package:posto/ui/views/create_post/text_item.dart';

class DraggableTextWidget extends StatelessWidget {
  DraggableTextWidget({
    super.key,
    required this.child,
    required this.id,
    this.onPress,
    this.onLongPress,
  });

  final int id;
  final TextItem child;
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;
  final ValueNotifier<Offset> position = ValueNotifier<Offset>(Offset.zero);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Offset>(
      key: UniqueKey(),
      valueListenable: position,
      builder: (context, value, child) {
        return Transform(
          transform: Matrix4.identity()
            ..translate(
              value.dx,
              value.dy,
            ),
          child: child,
        );
      },
      child: GestureDetector(
        key: UniqueKey(),
        onTap: onPress,
        onLongPress: onLongPress,
        onPanUpdate: (details) {
          position.value += details.delta;
        },
        child: Text(
          child.text,
          key: UniqueKey(),
          textAlign: child.textAlign,
          style: child.textStyle?.copyWith(
            fontSize: child.fontSize,
            color: child.color,
            fontStyle: child.fontStyle,
            fontWeight: child.fontWeight,
          ),
        ),
      ),
    );
  }
}
