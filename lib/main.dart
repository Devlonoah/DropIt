import 'package:drop_point/pages/drop_device/drop_device.dart';
import 'package:drop_point/pages/drop_info/drop_info.dart';
import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drop it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        DropDevice.id: (context) => DropDevice(),
        DropInfoPage.id: (context) => DropInfoPage()
      },
    );
  }
}
