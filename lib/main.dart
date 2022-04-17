import 'package:flutter/material.dart';
import 'package:jobber_front/constants.dart';
import 'package:jobber_front/views/home_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jobber',
      theme: ThemeData(
        //scaffoldBackgroundColor: kBlack,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const HomeView(),
    );
  }
}
