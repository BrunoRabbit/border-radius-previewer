import 'package:border_radius_previewer/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CenterBox extends StatelessWidget {
  const CenterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey.withOpacity(0.6),
              width: 2,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purpleAccent,
                Colors.purpleAccent[700]!,
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(controller.bottomLeftRadius),
              bottomRight: Radius.circular(controller.bottomRightRadius),
              topLeft: Radius.circular(controller.topLeftRadius),
              topRight: Radius.circular(controller.topRightRadius),
            ),
          ),
          height: 200,
          width: 200,
        )
      ],
    );
  }
}
