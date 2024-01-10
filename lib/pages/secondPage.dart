import 'package:demo_get/controllers/list_controller.dart';
import 'package:demo_get/controllers/tap_controller.dart';
import 'package:demo_get/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.put(ListController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(children: [
          GetBuilder<TapController>(builder: (_) {
            return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: Center(
                    child: Text(
                  "Sum = " + controller.z.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )));
          }),
          GestureDetector(
            onTap: () {
              Get.find<ListController>().setValues(Get.find<TapController>().z);
            },
            child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey),
                child: Center(
                    child: Text(
                  "Save",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=> HomePage());
            },
            child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey),
                child: Center(
                    child: Text(
                  "GoTo Home Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),
        ]),
      ),
    );
  }
}
