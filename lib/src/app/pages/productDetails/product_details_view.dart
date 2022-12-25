import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicine_cart_app/src/domain/model/medicineList.dart';
import 'package:medicine_cart_app/src/app/pages/cart/cart_view.dart';
import 'package:medicine_cart_app/src/app/theme/theme.dart';
import 'package:badges/badges.dart';

class ProductDetailsView extends StatefulWidget {
  //const ProductDetailsView({Key? key}) : super(key: key);
  final MedicineList medicineList;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();

  const ProductDetailsView(this.medicineList);
}

class _ProductDetailsState extends State<ProductDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
            Navigator.pop(context);
          },
        ),

        actions:  [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child:  Badge(
                position: BadgePosition.topEnd(top: 3, end: 3),
                child: IconButton(
                  icon: const Icon(
                      Icons.shopping_cart_outlined),
                  color: Colors.black,
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const CartView()));
                  },
                ),
                showBadge: true,
                badgeContent:  Text(
                  0.toString(),style: (const TextStyle(color: Colors.white)),),
                badgeColor: Colors.green,
              ),
            ),
          )
        ],

        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light
          //statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
        ),

        title: Center(
          child: Text(
            'Product',
            style: heading2Style,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 20.0, left: 12.0, right: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200.0,
                  width: width,
                  child: Image.asset(
                    'assets/images/sample_medicine_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                heightSpace,
                Row(
                  children: [
                    Text(
                      "৳" + widget.medicineList.discountedPrice.toString(),
                      style: const TextStyle(
                        fontSize: 34.0,
                        color: darkPrimaryColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    widthSpace,
                    Text(
                      "৳" + widget.medicineList.actualPrice.toString(),
                      style: const TextStyle(
                        fontSize: 11.0,
                        color: lightGreyColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 7.0),
                Text(
                  widget.medicineList.medicineName,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: medicineNameColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 7.0),
                Text(
                  widget.medicineList.medicineCompanyName,
                  style: const TextStyle(
                    fontSize: 11.0,
                    color: actualPriceColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 8.0),
                const Divider(),
                const Text(
                  "Short Description",
                  style:  TextStyle(
                    fontSize: 15.0,
                    color: descriptionColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  "Napa is indicated for fever, common cold and influenza, headache, toothache, earache, body pain, myalgia, neuralgia, dysmenorrhoea, sprains, colic pain, back pain, post-operative pain, postpartum pain, inflammatory pain, and post-vaccination pain in children. It is also indicated for rheumatic & osteoarthritic pain and stiffness of joints.",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: companyNameColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),



              ],
            )),
      ),

      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context,1);
                },
                child: Container(
                  height: 48.0,
                  width: width/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: primaryColor,
                    border: Border.all(color: darkPrimaryColor)
                  ),
                  child: const Center(child: Text("Add To Cart",style: TextStyle(
                    color: darkPrimaryColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400
                  ),)),

                ),
              ),
            ),

            const SizedBox(width: 18.0),

            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const CartView()));
                },
                child: Container(

                  height: 48.0,
                  width: width/2,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: darkPrimaryColor,
                  ),
                  child: const Center(child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.w500),)),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
