import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/src/home.dart';
import 'package:getx_1/src/pages/named/first.dart';
import 'package:getx_1/src/pages/named/second.dart';

import 'src/pages/next.dart';
import 'src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page:  () => Home(), transition: Transition.zoom),
        GetPage(name: "/first", page:  () => FirstNamedPage(), transition: Transition.zoom),
        GetPage(name: "/second", page:  () => SecondNamedPage(), transition: Transition.zoom),
        GetPage(name: "/next", page:  () => NextPage(), transition: Transition.zoom),
        GetPage(name: "/user/:uid", page:  () => UserPage(), transition: Transition.zoom),
      ],
    );
  }
}

