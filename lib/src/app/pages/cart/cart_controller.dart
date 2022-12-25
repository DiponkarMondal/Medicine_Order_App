import 'package:get/get.dart';

class CartController extends GetxController{
  late int _radioSelected;
  String _radioVal = "";
  double _napaPrice = 15.0;

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

  double get napaPrice => _napaPrice;

  set napaPrice(double value) {
    _napaPrice = value;
    notifyChildrens();
  }
}