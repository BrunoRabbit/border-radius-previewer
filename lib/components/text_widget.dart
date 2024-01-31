import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final TextStyle style;

  const TextWidget({
    super.key,
    required this.text,
    required this.padding,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
