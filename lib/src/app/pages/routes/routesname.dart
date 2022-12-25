import 'package:get/get.dart';
import 'package:medicine_cart_app/src/app/pages/medicineList/medicine_list_view.dart';
import 'package:medicine_cart_app/src/app/pages/productDetails/product_details_view.dart';
class NameOfRoutes {
  static final String medicineListPage = '/medicineListPage';
  static final String productPage = '/productPage';


}


class RoutesPages{
  static final pages = [
    GetPage(
      name: NameOfRoutes.medicineListPage,
      page: ()=> MedicineListView(),
    ),
    /*GetPage(
      name: NameOfRoutes.productPage,
      page: ()=> ProductDetailsView(),
    )*/
  ];
}