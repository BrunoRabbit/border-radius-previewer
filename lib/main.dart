import 'package:border_radius_previewer/controller/controller.dart';
import 'package:border_radius_previewer/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Controller()),
      ],
      child: const MaterialApp(
        title: 'Border Radius Previewer',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
