import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  // int counters = 1.obs; // RxInt is from Getx type Variable

  incrementCounter() {
    counter.value++;
    print(counter.value);
  }
}
