import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondNamedPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(Home());
              },
              child: Text('홈으로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
