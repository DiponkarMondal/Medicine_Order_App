import 'package:flutter/material.dart';
import 'package:medicine_cart_app/src/app/pages/medicineList/medicine_list_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medicine_cart_app/src/app/pages/routes/routesname.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      //initialRoute: NameOfRoutes.medicineListPage,
      //routes: RoutesPages.pages,

      home:  MedicineListView(),
    );
  }
}
