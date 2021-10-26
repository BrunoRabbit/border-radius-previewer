import 'package:flutter/material.dart';

class Styles {
  static TextStyle styles({
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.white,
    double size = 15,
  }) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: size,
    );
  }

  static TextStyle stylePreview({
    fontStyle = FontStyle.italic,
    color = Colors.white,
    fontSize = 15,
  }) {
    return TextStyle(
      fontStyle: fontStyle,
      color: color,
      fontSize: fontSize,
    );
  }
}
