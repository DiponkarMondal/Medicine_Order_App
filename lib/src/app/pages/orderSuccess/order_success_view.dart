import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicine_cart_app/src/domain/model/medicineList.dart';
import 'package:medicine_cart_app/src/app/pages/medicineList/medicine_list_view.dart';
import 'package:medicine_cart_app/src/app/theme/theme.dart';
import 'package:badges/badges.dart';

class OrderSuccessView extends StatefulWidget{
  const OrderSuccessView({Key? key}) : super(key: key);

  @override
  _OrderSuccessState createState() => _OrderSuccessState();

}

class _OrderSuccessState extends State<OrderSuccessView>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async{
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MedicineListView()),
              (Route<dynamic> route) => false,
        );
        return true;
      },
      child: Scaffold(
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
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const MedicineListView()),
                    (Route<dynamic> route) => false,
              );
              //Navigator.pop(context);
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

          /*title: Center(
            child: Text(
              'Payment',
              style: heading2Style,
            ),
          ),*/
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 112.0,
                  width: 112.0,
                  decoration:const BoxDecoration(
                    color: Color(0xFF37B34A),
                    shape: BoxShape.circle,
                  ) ,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset("assets/images/sample_ic_tick.png",fit: BoxFit.contain,),
                  ),

                ),
                const SizedBox(height: 46.0,),
                const Text("Order Placed Successfully",style:TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2B2B2E)),),
                const SizedBox(height: 14.0,),
                const Padding(
                  padding: EdgeInsets.only(left: 26.0,right: 26.0),
                  child: Text("One of our representatives will confirm your order shortly. You will receive an invoice through SMS.",
                    style:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF2B2B2E)),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
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
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MedicineListView()));

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const MedicineListView()),
                          (Route<dynamic> route) => false,
                    );
                  },
                  child: Container(
                    height: 48.0,
                    width: width/2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xFFE6E7E8),
                        //border: Border.all(color: darkPrimaryColor)
                    ),
                    child: const Center(child: Text("Back To Home",style: TextStyle(
                        color: itemQntyColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500
                    ),)),

                  ),
                ),
              ),

              const SizedBox(width: 18.0),

              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(

                    height: 48.0,
                    width: width/2,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: darkPrimaryColor,
                    ),
                    child: const Center(child: Text("View Orders",style: TextStyle(color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.w500),)),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}