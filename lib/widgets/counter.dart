import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/counter_controller.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Obx(() {
          print("rebuild");

          return Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 60),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 35,
          ),
          onPressed: () {
            controller.IncreamentCounter();
          }),
    );
  }
}
