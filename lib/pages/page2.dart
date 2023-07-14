import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/controlers/shmarandeh.dart';

class SecendPage extends StatelessWidget {
  SecendPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    Get.put(Shomarandeh(),permanent: true);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'dovom'
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                Get.arguments[0]["name"].toString()
            ),

            Text(
                Get.find<Shomarandeh>().currentNumber.toString()
            ),

            TextButton(
              onPressed: ()=> null,
              child: Text('Action'),
            ),
          ],
        ),
      ),
    );
  }
}
