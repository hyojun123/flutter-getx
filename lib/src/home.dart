import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/src/pages/normal/first.dart';
import 'package:getx_1/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '라우트 관리 홈',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(FirstPage());
              },
              child: Text('일반적인 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/first");
              },
              child: Text('Named 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/next", arguments: new User(name: "효준", age: 23));
              },
              child: Text('arguments'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/user/28357?name=효준&age=22");
              },
              child: Text('동적 url'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
              child: Text('단순 상태 관리'),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}