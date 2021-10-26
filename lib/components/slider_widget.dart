import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final void Function(double)? onChanged;
  final double value;
  final String? label;

  const SliderWidget({
    Key? key,
    required this.onChanged,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.purpleAccent,
      inactiveColor: Colors.purpleAccent[100]!.withOpacity(0.4),
      onChanged: onChanged,
      value: value,
      label: label,
      min: 0,
      max: 100,
    );
  }
}
