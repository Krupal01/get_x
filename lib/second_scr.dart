import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/data_controller.dart';

class SecondScr extends StatelessWidget {
  static const route = "/secondscr";
  static const nameKey = "Name";
  const SecondScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = Get.arguments;
    var dataController = Get.put(DataController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(name != null ? name[0][nameKey] : "no Arg"),
              ElevatedButton(onPressed: ()=>dataController.increseCount(), child: Obx(()=>Text(dataController.count.value.toString())))
            ]),
      ),
    );
  }
}
