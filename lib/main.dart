import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme, //default theme
      darkTheme: TAppTheme.darkTheme, //dark theme

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Body'),
            ElevatedButton(
                onPressed: () {
                  Get.changeTheme(ThemeData.light());
                },
                child: const Text('light theme')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                },
                child: const Text('dark theme')),
          ],
        ),
      ),
    );
  }
}
