import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/src/home.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

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
            Text('${Get.parameters['uid']} ${Get.parameters['name']} 님 안녕하세요 ${Get.parameters['age']}'),
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
