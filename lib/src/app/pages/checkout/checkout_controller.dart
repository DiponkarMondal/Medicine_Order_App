import 'package:get/get.dart';

class CheckoutController extends GetxController{
  late int _radioSelected = 0;
  String _radioVal = "";

  int get radioSelected => _radioSelected;
  set radioSelected(int value) {
    _radioSelected = value;
    notifyChildrens();
  }

  String get radioVal => _radioVal;
  set radioVal(String value) {
    _radioVal = value;
    notifyChildrens();
  }
}