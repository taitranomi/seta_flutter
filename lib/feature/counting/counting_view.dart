import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seta_flutter/feature/counting/counting_controller.dart';

import 'counting_master.dart';

class CountingView extends StatelessWidget {
  final CountingController _countingController = Get.put(CountingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counting Tab')),
      body: Obx(() => CountingMaster(
        _countingController.count.toInt(), 
        Builder(
          builder: (BuildContext innerContext) {
            return Center(
              child: Text(CountingMaster.of(innerContext).count.toString()),
            );
          }
        )
      )),
      floatingActionButton: ElevatedButton(onPressed: _countingController.increase, child: Icon(Icons.add),)
    );
  }
}