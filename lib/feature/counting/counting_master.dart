import 'package:flutter/material.dart';

class CountingMaster extends InheritedWidget {
  const CountingMaster(this.count, this.child) : super(child: child);
 
  final Widget child;

  final int count;
 
  static CountingMaster of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CountingMaster>()!;
  }
  
  @override
  bool updateShouldNotify(CountingMaster oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.count != count;
  }
}