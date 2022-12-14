import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstNamedPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/second");
              },
              child: Text('다음페이지 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
