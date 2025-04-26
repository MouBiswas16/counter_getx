import 'package:counter_getx/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  final CounterController counterController = Get.put(CounterController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print("rebuild");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Counter Getx", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Obx(() {
          print("rebuild");
          return Text(
            counterController.counter.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          counterController.incrementCounter();
        },
      ),
    );
  }
}
