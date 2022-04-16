import 'package:flutter/material.dart';
import 'package:wallpaper/utils/wallpaper.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      // title: "Wow Wallpaper",
      home: const Wallpaper(),
    );
  }
}
