import 'package:demo_get/controllers/tap_controller.dart';
import 'package:demo_get/pages/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../class/buttonClass.dart';

class AppButtons extends StatelessWidget {
  AppButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<TapController>(builder: (tapController) {
            return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Center(
                    child: Text(
                  "Value of X = " + tapController.x.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )));
          }),
          GetBuilder<TapController>(builder: (tapController) {
            return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Center(
                    child: Text(
                  "Value of Y = " + tapController.y.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )));
          }),
          GestureDetector(
            onTap: () {
              controller.increaseX();
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
                  "Increase the value of X",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),
          GestureDetector(
            onTap: () {
              controller.increaseY();
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
                  "Increase the Value of Y",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=> FirstPage());
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
                  "Go To First Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))),
          ),

        ],
      ),
    );
  }
}
