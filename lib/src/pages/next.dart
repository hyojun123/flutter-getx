import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${(Get.arguments as User).name} : ${(Get.arguments as User).age}'),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('뒤로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
