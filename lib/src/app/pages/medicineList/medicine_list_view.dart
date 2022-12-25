import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medicine_cart_app/src/domain/model/medicineList.dart';
import 'package:medicine_cart_app/src/app/pages/cart/cart_view.dart';
import 'package:medicine_cart_app/src/app/pages/medicineList/medicine_controller.dart';
import 'package:medicine_cart_app/src/app/pages/productDetails/product_details_view.dart';
import 'package:medicine_cart_app/src/app/theme/theme.dart';
import 'package:badges/badges.dart';

class MedicineListView extends StatefulWidget {
  const MedicineListView({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MedicineListView> {
  final MedicineController _medicineController = Get.put(MedicineController());
  TextEditingController editingController = TextEditingController();
  List<MedicineList> mMedicineList =
      Get.put(MedicineController()).getMedicineList;

  var items = <MedicineList>[];

  int firstQnty = 1;

  @override
  void initState() {
    // TODO: implement initState
    items.addAll(mMedicineList);
    firstQnty = 1;
    super.initState();
  }

  void filterSearchResults(String query) {
    List<MedicineList> dummySearchList = <MedicineList>[];
    dummySearchList.addAll(mMedicineList);
    if (query.isNotEmpty) {
      List<MedicineList> dummyListData = <MedicineList>[];
      for (var item in dummySearchList) {
        if (item.medicineName.toLowerCase().contains(query) || item.medicineName.contains(query)) {
          dummyListData.add(item);
        }
      }
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(mMedicineList);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return StatefulBuilder(
      builder: (context, setState) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: whiteColor,
            //toolbarHeight: 80.0,

            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                //Get.dialog(widget)
              },
            ),

            actions:  [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Badge(
                    position: BadgePosition.topEnd(top: 3, end: 3),
                    child: IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_outlined),
                        color: Colors.black,
                      onPressed: (){
                        if(_medicineController.itemCount>0) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const CartView()));
                        }else{
                        }
                      },
                    ),
                    showBadge: true,
                    badgeContent:  Text(
                      _medicineController.itemCount.toString(),style: (const TextStyle(color: Colors.white)),),
                    badgeColor: Colors.green,
                  ),
                ),
              )
            ],

            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(65.0),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 14.0),
                child: Center(
                  child: Container(
                    width: width,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                        style: appbarHeadingStyle,
                        controller: _medicineController.searchController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: 'What you searching for?',
                          hintStyle: searchTextStyle,
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.gray,
                            size: 22,
                          ),
                        ),
                        onChanged: (value) {
                          print("textSearch ${value}");
                          filterSearchResults(value);
                        },
                        onSubmitted: (v) {}),
                  ),
                ),
              ),
            ),

            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor: Colors.transparent,
                systemNavigationBarIconBrightness: Brightness.light
              //statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
            ),

            title: Center(
              child: Text(
                'Medicine',
                style: heading2Style,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Text(
                        "Medicine",
                        style: heading2Style,
                      ),
                    ),
                    heightSpace,
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: items.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        var item = items[index];

                        return InkWell(
                          onTap: ()async{
                            print("onClickItem: ${item.medicineId}");
                            FocusScope.of(context).unfocus();
                            int itemCount = await Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsView(item)));

                            if(itemCount!=0){
                              setState((){
                                _medicineController.itemCount += itemCount;
                              });

                            }

                            //Get.to( ProductDetailsView());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 12.0,
                              right: 12.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex:3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.medicineName,
                                        style: medicineNameStyle,
                                      ),
                                      const SizedBox(height: 3.0),
                                      Text(
                                        item.medicineCompanyName,
                                        style: companyNameStyle,
                                      ),
                                      const SizedBox(height: 9.0),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "৳" + item.discountedPrice.toString(),
                                            style: discountPriceStyle,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            "৳" + item.actualPrice.toString(),
                                            style: actualPriceStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                item.medicineId==3?
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          decrement();
                                        },
                                        child: Container(
                                          width: 24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  width: 1,
                                                  color: addToCartNameColor)),
                                          child: const Center(
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: addToCartNameColor),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                       Text(
                                        firstQnty.toString(),
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: itemQntyColor),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          increment();
                                        },
                                        child: Container(
                                          width: 24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  width: 1,
                                                  color: addToCartNameColor)),
                                          child: const Center(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: addToCartNameColor),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                                    :const Text(
                                  "Add to Cart",
                                  style: addToCartNameStyle,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider();
                      },
                    )
                  ],
                )),
          ),
        );
      },
    );

  }

  void increment() {
    setState(() {
      firstQnty++;
    });
  }

  void decrement() {
    setState(() {
      if (firstQnty > 1) {
        firstQnty--;
      }
    });
  }

}
