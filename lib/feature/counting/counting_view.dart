import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seta_flutter/feature/counting/counting_controller.dart';

class CountingView extends StatelessWidget {
  final CountingController _countingController = Get.put(CountingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counting Tab')),
      body: Center(child: Obx(() => Text('${_countingController.count}'))),
      floatingActionButton: ElevatedButton(onPressed: _countingController.increase, child: Icon(Icons.add),)
    );
  }
}