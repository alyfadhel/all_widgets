import 'package:all_widgets/date_time/date_time_screen.dart';
import 'package:all_widgets/http/http.dart';
import 'package:all_widgets/image_picker/image_picker.dart';
import 'package:all_widgets/tab_bar/tab_bar_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HttpScreen(),
    );
  }
}

