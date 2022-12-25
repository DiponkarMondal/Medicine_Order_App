import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:medicine_cart_app/src/app/pages/checkout/checkout_view.dart';
import 'package:medicine_cart_app/src/app/theme/theme.dart';
import 'package:badges/badges.dart';

class ShippingInformationView extends StatefulWidget{
  final totalPayable;

   ShippingInformationView(this.totalPayable);

  @override
  _ShippingInformationState createState() => _ShippingInformationState();

}

class _ShippingInformationState extends State<ShippingInformationView>{

  bool checkBoxValue = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkBoxValue = false;
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
                  top: 30.0, bottom: 20.0, left: 14.0, right: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                   const Text(
                    "Shipping Information Form",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      color: descriptionColor
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Divider(),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text("Name",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            color: itemQntyColor
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text("Abdullah Al Noman",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: itemQntyColor
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  const Divider(),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   [
                      const Expanded(
                        flex: 2,
                        child: Text("Email",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: itemQntyColor
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        //child: Text("example@gmail.com")
                        child: TextField(
                            //controller: promoCodeController,
                          maxLines: 1,
                            decoration:  const InputDecoration(
                              hintText: 'example@gmail.com',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(0.0),
                              isDense: true,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              print("textSearch ${value}");
                            },
                            onSubmitted: (v) {}),
                        ),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  const Divider(),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   [
                      const Expanded(
                        flex: 2,
                        child: Text("Address",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: itemQntyColor
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        //child: Text("example@gmail.com")
                        child: TextField(
                          //controller: promoCodeController,\
                          maxLines: 1,
                            decoration:  const InputDecoration(
                              hintText: 'Flat / House / Road  ',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(0.0),
                              isDense: true,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              print("textSearch ${value}");
                            },
                            onSubmitted: (v) {}),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  const Divider(),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   [
                      const Expanded(
                        flex: 2,
                        child: Text("Post",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: itemQntyColor
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        //child: Text("example@gmail.com")
                        child: TextField(
                          //controller: promoCodeController,\
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            decoration:  const InputDecoration(
                              hintText: 'Post Code',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(0.0),
                              isDense: true,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              print("textSearch ${value}");
                            },
                            onSubmitted: (v) {}),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32.0,),
                  const Text(
                    "Invoice information",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: descriptionColor
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Divider(),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text("Email",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: itemQntyColor
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text("hi@example.com",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: itemQntyColor
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  const Divider(),
                  const SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   [
                      const Expanded(
                        flex: 2,
                        child: Text("Mobile no",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: itemQntyColor
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        //child: Text("example@gmail.com")
                        child: TextField(
                          //controller: promoCodeController,\
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            decoration:  const InputDecoration(
                              hintText: '+8801710000000',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(0.0),
                              isDense: true,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              print("textSearch ${value}");
                            },
                            onSubmitted: (v) {}),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35.0,),

                  Row(
                    children: [
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: Checkbox(
                            value: checkBoxValue,
                            activeColor: radioButtonColor,
                            onChanged: (value){
                          setState(() {
                            print("object $value");
                            setSelectedRadioTile(value as bool);
                          });
                        }),
                      ),
                      const SizedBox(width: 14.0,),
                      const Text("I Agree with ",
                        style:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF767676)),),
                      const Text("Terms & Conditions",
                        style:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF2E3191)),),
                    ],
                  ),

                ],
              )),
        ),
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const SizedBox(height: 16.0,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      "৳ ${widget.totalPayable.toString()}",

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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckoutView(widget.totalPayable)));
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
                            "Confirm",
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
        ],
      ),
    );
  }

  setSelectedRadioTile(bool val) {
    setState(() {
      checkBoxValue = val;
    });
  }

}