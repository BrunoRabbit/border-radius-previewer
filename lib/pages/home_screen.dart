import 'package:border_radius_previewer/components/center_box.dart';
import 'package:border_radius_previewer/components/slider_widget.dart';
import 'package:border_radius_previewer/components/text_widget.dart';
import 'package:border_radius_previewer/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:border_radius_previewer/styles/styles.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: 'Top Right',
            padding: const EdgeInsets.all(5),
            style: Styles.styles(),
          ),
          SizedBox(
            width: 260,
            child: SliderWidget(
              onChanged: (newValue) => controller.setTopRight(newValue),
              value: controller.topRightRadius,
              label: '${controller.topRightRadius}',
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Top Left',
                  padding: const EdgeInsets.all(5),
                  style: Styles.styles(),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: SizedBox(
                    width: 260,
                    child: SliderWidget(
                      onChanged: (newValue) => controller.setTopLeft(newValue),
                      value: controller.topLeftRadius,
                      label: '${controller.topLeftRadius}',
                    ),
                  ),
                ),
                const CenterBox(),
                RotatedBox(
                  quarterTurns: 1,
                  child: SizedBox(
                    width: 260,
                    child: SliderWidget(
                      onChanged: (newValue) =>
                          controller.setBottomRight(newValue),
                      value: controller.bottomRightRadius,
                      label: '${controller.bottomRightRadius}',
                    ),
                  ),
                ),
                TextWidget(
                  text: 'Bottom Right',
                  padding: const EdgeInsets.all(8),
                  style: Styles.styles(),
                ),
              ],
            ),
          ),
          TextWidget(
            text: 'Bottom Left',
            padding: const EdgeInsets.all(15),
            style: Styles.styles(),
          ),
          SizedBox(
            width: 260,
            child: RotatedBox(
              quarterTurns: 2,
              child: SliderWidget(
                onChanged: (newValue) => controller.setBottomLeft(newValue),
                value: controller.bottomLeftRadius,
                label: '${controller.bottomLeftRadius}',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: TextWidget(
                          padding: const EdgeInsets.all(5),
                          text: 'Top Left: ' +
                              controller.topLeftRadius.toStringAsFixed(0),
                          style: Styles.stylePreview(),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: TextWidget(
                          padding: const EdgeInsets.all(5),
                          text: 'Top Right: ' +
                              controller.topRightRadius.toStringAsFixed(0),
                          style: Styles.stylePreview(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: TextWidget(
                          text: 'Bottom Left: ' +
                              controller.bottomLeftRadius.toStringAsFixed(0),
                          padding: const EdgeInsets.all(5),
                          style: Styles.stylePreview(),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: TextWidget(
                          text: 'Bottom Right: ' +
                              controller.bottomRightRadius.toStringAsFixed(0),
                          padding: const EdgeInsets.all(5),
                          style: Styles.stylePreview(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.paste,
                  color: Colors.white,
                ),
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(
                      text: 'borderRadius: BorderRadius.only('
                          '\n\tbottomLeft: Radius.circular(${controller.bottomLeftRadius}),'
                          '\n\tbottomRight: Radius.circular(${controller.bottomRightRadius}),'
                          '\n\ttopLeft: Radius.circular(${controller.topLeftRadius}),'
                          '\n\ttopRight: Radius.circular(${controller.topRightRadius}),\n),',
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Copied to clipboard')));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
