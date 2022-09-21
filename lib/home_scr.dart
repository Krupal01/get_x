import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/second_scr.dart';

class HomeScr extends StatelessWidget {
  static const route = "/home";
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(const SecondScr()),
              child: const Text("go to second Screen (simple)"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(SecondScr.route),
              child: const Text("go to second Screen (named route)"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(SecondScr.route, arguments: [
                {SecondScr.nameKey: "Krupal"}
              ]),
              child: const Text("go to second Screen (with arg)"),
            ),
            ElevatedButton(
              onPressed: () => Get.offNamed(SecondScr.route),
              child: const Text("go to second Screen (remove prev screen)"),
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(SecondScr.route),
              child: const Text("go to second Screen (remove all prev scr)"),
            ),
          ],
        ),
      ),
    );
  }
}
