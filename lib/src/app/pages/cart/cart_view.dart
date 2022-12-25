import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medicine_cart_app/src/app/pages/cart/cart_controller.dart';
import 'package:medicine_cart_app/src/app/pages/shippingInformation/shipping_information_view.dart';
import 'package:medicine_cart_app/src/app/theme/theme.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<CartView> {
  final CartController _cartController = Get.put(CartController());

  TextEditingController promoCodeController = TextEditingController();
  String promoCode = "Discount on Diagnostics";
  double priceOne = 15.0;
  double totalPriceOne = 0.0;
  double totalPriceTwo = 0.0;
  double priceTwo = 105.0;
  double actualPrice = 0.0;
  double savedAmount = 15.0;
  double totalPayable = 0.0;
  int firstQnty = 1;
  int secondQnty = 1;

  @override
  void initState() {
    super.initState();
    priceOne = 15.0;
    priceTwo = 105.0;
    actualPrice = 0.0;
    savedAmount = 15.0;
    totalPayable = 0.0;
    firstQnty = 1;
    secondQnty = 1;

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    totalPriceOne = priceOne* firstQnty;
    totalPriceTwo = priceTwo* secondQnty;
    double total = totalPriceOne+totalPriceTwo;
    double savedTk = 15.0;
    double priceOnee = 15.0;
    double priceTwoo = 105.0;
    double totalPayable = total - savedTk;

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

        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Badge(
                position: BadgePosition.topEnd(top: 3, end: 3),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  color: Colors.black,
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsView(item)));
                  },
                ),
                showBadge: true,
                badgeContent: Text(
                  0.toString(),
                  style: (const TextStyle(color: Colors.white)),
                ),
                badgeColor: Colors.green,
              ),
            ),
          )
        ],

        title: Center(
          child: Text(
            'My Cart',
            style: heading2Style,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height - 50.0,
          child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 20.0, left: 17.0, right: 17.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "ePharma",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 24.0,
                        width: 73.0,
                        child: Image.asset(
                          'assets/images/sample_company_logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 17.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/sample_ic_pills.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const Text(
                        "Medicines",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 9.0,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            "Type - Item",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: actualPriceColor),
                            textAlign: TextAlign.left,
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 24.0),
                                child: Text(
                                  "QTY",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: actualPriceColor),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Text(
                                "Price (tk)",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: actualPriceColor),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            "Napa 200mg",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: medicineNameColor),
                            textAlign: TextAlign.left,
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      decrement(1);
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
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      increment(1);
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
                               Text(
                                 "৳ ${totalPriceOne.toString()}",
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: medicineNameColor),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 19.0,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            "Bisoloc",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: medicineNameColor),
                            textAlign: TextAlign.left,
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      decrement(2);
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
                                        child:  Text(
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
                                    secondQnty.toString(),
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: itemQntyColor),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      increment(2);
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
                                        child:  Text(
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
                               Text(
                                 "৳ ${totalPriceTwo.toString()}",
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: medicineNameColor),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        "Medicine Total",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: companyNameColor),
                      ),
                      Text(
                        "৳ ${total.toString()}",
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: companyNameColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 23.0,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        "Vendor Total",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: companyNameColor),
                      ),
                      Text(
                        "৳ ${total.toString()}",
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: companyNameColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  const Text(
                    "Order Summary - 2 Items",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: itemQntyColor),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Grand Total",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: companyNameColor),
                            ),
                            Text(
                              "৳ ${total.toString()}",
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: companyNameColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Promo",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: companyNameColor),
                            ),
                            InkWell(
                              onTap: () {
                                promoCodeDialog();
                              },
                              child: const Text(
                                "Apply now",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: discountPriceColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Text(
                              "Saved",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: companyNameColor),
                            ),
                            Text(
                              "৳ ${savedTk.toString()}",
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: companyNameColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Text(
                              "Total Payable",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: descriptionColor),
                            ),
                            Text(
                              "৳ ${totalPayable.toString()}",
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: descriptionColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20.0,
                              width: 20.0,
                              child:
                                  Image.asset("assets/images/sample_promo.png"),
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            InkWell(
                              onTap: () {
                                promoCodeDialog();
                              },
                              child: const Text(
                                "Apply promo code",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: promoCodeColor),
                              ),
                            )
                          ],
                        )),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              )),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text(
                  "Total Payable:",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: actualPriceColor),
                ),
                Text(
                  "৳ ${totalPayable.toString()}",
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: medicineNameColor),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(width: 18.0),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ShippingInformationView(totalPayable)));
                },
                child: Container(
                  height: 48.0,
                  width: width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: darkPrimaryColor,
                  ),
                  child: const Center(
                      child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void promoCodeDialog() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 14.0, right: 14.0, bottom: 26.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Center(
                        child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greyColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Image.asset(
                                "assets/images/sample_promo_code_logo.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Center(
                        child: Text(
                          "Apply Promo code",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xFFE0DDDD),
                              )),
                          child: TextField(
                              style: appbarHeadingStyle,
                              controller: promoCodeController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(15.0),
                                hintText: 'Enter Promo Code',
                                hintStyle: searchTextStyle,
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                print("textSearch ${value}");
                              },
                              onSubmitted: (v) {}),
                        ),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Container(
                        height: 75.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFE0DDDD),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      promoCode.toUpperCase(),
                                      style: const TextStyle(
                                          fontFamily: 'Barlow',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: promoCodeTextColor),
                                    ),
                                    const SizedBox(
                                      height: 7.0,
                                    ),
                                    const Text(
                                      "Enjoy 25% discount on your next order! Upto ৳100, minimum order value ৳400)",
                                      style: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 14.0,
                              ),
                              Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image.asset(
                                    "assets/images/sample_ic_tick.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 26.0,
                      ),
                      InkWell(
                        onTap: () {
                          promoCodeController.text = "";
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: darkPrimaryColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Center(
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  void increment(int no) {
    setState(() {
      if(no==1) {
        firstQnty++;
        totalPriceOne = priceOne*firstQnty;
      }else{
        secondQnty++;
        totalPriceTwo = priceTwo*secondQnty;
      }
    });
  }

  void decrement(int no) {
    setState(() {
      if(no==1) {
        if (firstQnty > 1) {
          firstQnty--;
          totalPriceOne = priceOne*firstQnty;
        }
      }else{
        if (secondQnty > 1) {
          secondQnty--;
          totalPriceTwo = priceTwo*secondQnty;
        }
      }
    });
  }
}
