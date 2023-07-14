import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testgetx/controlers/shmarandeh.dart';


class FirstPage extends StatelessWidget {
   FirstPage({Key? key}) : super(key: key);

  final shomarandeh = Get.put(Shomarandeh(),permanent: true);


  //Shomarandeh shoma  = Shomarandeh();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'avavl'
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                  'Safheh Aval ++ ${shomarandeh.currentNumber.value}'
              ),),
              TextButton(
                  onPressed: ()=> shomarandeh.ezafeKardan(),
                  child: Text('Action'),
              ),

              SizedBox(height: 10,),
              TextButton(
                onPressed: ()=> Get.toNamed('/second',arguments: [
                  {'name': 'ali', 'name2': 'amin'}
                ]),
                child: Text('dovom'),
              ),


              SizedBox(height: 10,),
              TextButton(
                onPressed: ()=> Get.toNamed('/page3'),
                child: Text('page 3'),
              ),


              SizedBox(height: 10,),
              TextButton(
                onPressed: ()=> Get.snackbar(
                  "Welcome to Flutter Agency",
                  "We are expert in FLutter App Development",
                    icon: Icon(Icons.settings),
                  snackPosition: SnackPosition.TOP,
                ),
                child: Text('snake bar'),
              ),


              SizedBox(height: 10,),
              TextButton(
                onPressed: ()=> Get.defaultDialog(
                  title: 'matn title',
                  titleStyle: TextStyle(
                      color:Colors.red
                  ),
                  titlePadding: EdgeInsets.symmetric(vertical: 25),
                  middleText:'matn asli Dialog',
                  backgroundColor: Colors.grey[200],
                  textCancel: 'cancel',
                  textConfirm: 'confirm',
                  onConfirm: (){
                    Get.back();
                    Get.snackbar(
                    "Welcome to Flutter Agency",
                    "We are expert in FLutter App Development",
                    snackPosition: SnackPosition.TOP,
                  );

                  },
                ),
                child: Text('dialog bar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
