import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicine_cart_app/src/app/pages/checkout/checkout_controller.dart';
import 'package:medicine_cart_app/src/app/pages/orderSuccess/order_success_view.dart';
import 'package:medicine_cart_app/src/app/theme/theme.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';

class CheckoutView extends StatefulWidget{

  final totalPayable;
  CheckoutView(this.totalPayable);

  @override
  _CheckoutState createState() => _CheckoutState();

}

class _CheckoutState extends State<CheckoutView>{

  final CheckoutController _checkoutController = Get.put(CheckoutController());
  int selectedRadioTile = 0;
  int selectedRadio = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    //int? _radioSelected;
    //String _radioVal = "";

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

        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light
          //statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
        ),

        title: Center(
          child: Text(
            'Payment',
            style: heading2Style,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height - 50.0,
          child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 20.0, left: 14.0, right: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "You are buying from:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkGray
                    ),
                  ),
                  const SizedBox(height: 18.0,),

                  const Text(
                    "Diagnostics",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2B2B2E)
                    ),
                  ),
                  Text(
                    "৳ ${widget.totalPayable}",
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0099FF)
                    ),
                  ),
                  const Text(
                    "(All inclusive)",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF979797)
                    ),
                  ),

                ],
              )),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Pay via any of the below methods",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF979797)
              ),
            ),

            const SizedBox(height: 14.0,),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                const SizedBox(height: 14.0,),

                SizedBox(
                  height: 40.0,
                  child: RadioListTile(
                    value: 1,
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.platform,
                    groupValue: selectedRadioTile,
                    title: Row(
                      children: [
                        SizedBox(
                          height: 28.0,
                          width: 28.0,
                          child: Image.asset('assets/images/sample_bkash_logo.png'),
                        ),

                        const SizedBox(width: 20.0,),

                        const Text("bKash Payment",
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),),
                      ],
                    ),
                    onChanged: (val) {
                      print("Radio Tile pressed $val");
                      setSelectedRadioTile(val as int);
                    },
                    activeColor: radioButtonColor,

                    selected: true,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                  child: RadioListTile(
                    value: 2,
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.platform,
                    groupValue: selectedRadioTile,
                    title: Row(
                      children: [
                        SizedBox(
                          height: 28.0,
                          width: 28.0,
                          child: Image.asset('assets/images/sample_card_logo.png'),
                        ),

                        const SizedBox(width: 20.0,),
                        const Text("Credit/Debit Card",
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),),
                      ],
                    ),
                    onChanged: (val) {
                      print("Radio Tile pressed $val");
                      setSelectedRadioTile(val as int);
                    },
                    activeColor: radioButtonColor,

                    selected: true,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                  child: RadioListTile(
                    value: 3,
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.platform,
                    groupValue: selectedRadioTile,
                    title: Row(
                      children: [
                        SizedBox(
                          height: 28.0,
                          width: 28.0,
                          child: Image.asset('assets/images/sample_nagad_logo.png',fit: BoxFit.contain,),
                        ),

                        const SizedBox(width: 20.0,),
                        const Text("Nagad Payment",
                          style:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),),
                      ],
                    ),
                    onChanged: (val) {
                      print("Radio Tile pressed $val");
                      setSelectedRadioTile(val as int);
                    },
                    activeColor: radioButtonColor,

                    selected: true,
                  ),
                ),
                const SizedBox(height: 40.0,),
              ],
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderSuccessView()));
              },
              child: Container(
                height: 48.0,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: darkPrimaryColor,
                ),
                child: const Center(
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }


  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

}