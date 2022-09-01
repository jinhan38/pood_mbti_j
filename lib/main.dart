import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pood_mbti_j/RoutePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
              child: child!);
        },
        title: "푸드",
        locale: Get.deviceLocale,
        initialRoute: RoutePage.INTRO_ROUTE,
        transitionDuration: const Duration(milliseconds: 200),
        getPages: RoutePage.getPageList);
  }
}
