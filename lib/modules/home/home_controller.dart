import 'package:get/get.dart';

class HomeController extends GetxController {

  final _counter = 0.obs;
  set counter(value) => _counter.value = value;
  get counter => _counter.value;

  incrementCounter() {
    counter++;
  }

  resetCounter() {
    counter = 0;
  }
}
