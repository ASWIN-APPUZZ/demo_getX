import 'package:demo_get/controllers/tap_controller.dart';
import 'package:demo_get/pages/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
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
        child: Column(
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Center(
                      child: Text("Value of X = "+
                    controller.x.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )));
            }),
            GetBuilder<TapController>(builder: (_) {
              return Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Center(
                      child: Text("Value of Y = "+
                    controller.y.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )));
            }),
            GestureDetector(
            onTap: () {
              controller.decreseX();
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
                  "Decrease the value of x",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),
          GestureDetector(
            onTap: () {
              controller.decreseY();
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
                  "Decrease the value of Y",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),
          GestureDetector(
            onTap: () {
              controller.sumXY();
              Get.to(()=> SecondPage());
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
                  "Sum",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),
          ]),
      ),
    );
  }
}
