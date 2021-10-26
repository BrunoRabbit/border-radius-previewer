import 'package:flutter/material.dart';

import 'package:border_radius_previewer/styles/styles.dart';

class TextWidget extends StatelessWidget {
  final String text;

  final EdgeInsets padding;

  final TextStyle style;

  const TextWidget({
    Key? key,
    required this.text,
    required this.padding,
    required this.style,
  }) : super(key: key);

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
