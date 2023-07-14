import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);

  RxInt count = 0.obs ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'tset internal'
        ),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text('count : ' + count.value.toString())),
            TextButton(
                onPressed: (){count.value++;},
                child: Text('++'),
            ),
            TextButton(
              onPressed: (){count.value--;},
              child: Text('--'),
            )
          ],
        ),
      ),
    );
  }
}
