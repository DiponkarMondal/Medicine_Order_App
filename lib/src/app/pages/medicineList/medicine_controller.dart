import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:medicine_cart_app/src/domain/model/medicineList.dart';

class MedicineController extends GetxController{

  late var _medicineList = <MedicineList>[].obs;

  List<MedicineList> get getMedicineList => _medicineList;

  var searchController = TextEditingController();

  late int _itemCount = 0;

  get medicineList => _medicineList;
  set medicineList(value) {
    _medicineList = value;
    notifyChildrens();
  }


  int get itemCount => _itemCount;
  set itemCount(int value) {
    _itemCount = value;
    notifyChildrens();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();


    var list = [
      MedicineList(
        medicineId: 1,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 2,
        medicineName: 'Asthalin Inhaler 200Md',
        medicineCompanyName: 'Cipla Limited Respiratory',
        actualPrice: 139.13,
        discountedPrice: 118.26,
      ),
      MedicineList(
        medicineId: 3,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 4,
        medicineName: 'Asthalin Inhaler 200Md',
        medicineCompanyName: 'Cipla Limited Respiratory',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 5,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 6,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 7,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 8,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 9,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 10,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
      MedicineList(
        medicineId: 11,
        medicineName: 'Ecospirin 150Mg Tablet 14’S',
        medicineCompanyName: 'ACME Limited',
        actualPrice: 8.43,
        discountedPrice: 7.50,
      ),
    ];
    _medicineList.addAll(list);
  }

  void filterSearchResults(String query) {
    List<MedicineList> dummySearchList = <MedicineList>[];
    dummySearchList.addAll(_medicineList);
    if(query.isNotEmpty) {
      List<MedicineList> dummyListData = <MedicineList>[];
      for (var item in dummySearchList) {
        if(item.medicineName.contains(query)) {
          dummyListData.add(item);
        }
      }

      //_medicineList.clear();
      _medicineList.addAll(dummyListData);
      /*setState(() {
          items.clear();
          items.addAll(dummyListData);
        });*/
      return;
    } else {

      _medicineList.clear();
      _medicineList.addAll(dummySearchList);
      /* setState(() {
          items.clear();
          items.addAll(duplicateItems);
        });*/
    }
  }

}