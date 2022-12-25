import 'package:flutter/material.dart';

enum AppTheme { primary }

Color scaffoldBgColor = Color(0xFFF4F4F4);
const primaryColor =  Color(0x1A226CC3);
//Color primaryColor = Color(0xFFFFCCCC);226CC3
const Color darkPrimaryColor = Color(0xFF226CC3);
const Color greyColor = Color(0xFFF2F2F7);
const Color lightGreyColor = Color(0xFF9DA0A3);
const Color medicineNameColor = Color(0xFF0C1026);
const Color companyNameColor = Color(0xFF767676);
const Color addToCartNameColor = Color(0xFF1C1C1E);
const Color discountPriceColor = Color(0xFF0099FF);
const Color actualPriceColor = Color(0xFF767676);
const Color descriptionColor = Color(0xFF1A1A1A);
const Color itemQntyColor = Color(0xFF3B4148);
const Color promoCodeColor = Color(0xFF6C7076);
const Color promoCodeTextColor = Color(0xFF2C5CB2);
const Color radioButtonColor = Color(0xFF2E3191);
Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color BG = Color(0xFFFFCCCC);


double fixPadding = 10.0;

const SizedBox heightSpace =  SizedBox(height: 10.0);
const SizedBox widthSpace =  SizedBox(width: 10.0);
const SizedBox minWidthSpace =  SizedBox(width: 5.0);
const SizedBox miniHeightSpace =  SizedBox(height: 5.0);
const SizedBox noHeightSpace =  SizedBox(height: 0.0);

const TextStyle bottomBarItemStyle = TextStyle(
  color: blackColor,
  fontSize: 12.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
);

const TextStyle bigHeadingStyle = TextStyle(
  fontSize: 22.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w600,
);

const TextStyle headingStyle = TextStyle(
  fontSize: 18.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle heading2Style =  const TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle greyHeadingStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

const TextStyle medicineNameStyle = TextStyle(
  fontSize: 14.0,
  color: medicineNameColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

const TextStyle companyNameStyle = TextStyle(
  fontSize: 10.0,
  color: companyNameColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

const TextStyle addToCartNameStyle = TextStyle(
  fontSize: 11.0,
  color: addToCartNameColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
);

const TextStyle discountPriceStyle = TextStyle(
  fontSize: 13.0,
  color: discountPriceColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
);

const TextStyle actualPriceStyle = TextStyle(
  fontSize: 10.0,
  color: actualPriceColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  decoration: TextDecoration.lineThrough
);

TextStyle redHeadingStyle = const TextStyle(
  fontSize: 15.0,
  color: Colors.red,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w300,
);

TextStyle blueTextStyle = const TextStyle(
  fontSize: 18.0,
  color: Colors.blue,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

TextStyle versionStyle = const TextStyle(
  fontSize: 14.0,
  color: Colors.grey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

const TextStyle grayTextStyle = TextStyle(
  fontSize: 18.0,
  color: greyColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

TextStyle whiteHeadingStyle = TextStyle(
  fontSize: 22.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle whiteSubHeadingStyle = TextStyle(
  fontSize: 14.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
);

TextStyle whiteSubHeadingStyleWithDiscount = TextStyle(
    fontSize: 14.0,
    color: whiteColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.lineThrough
);

TextStyle wbuttonWhiteTextStyle = TextStyle(
  fontSize: 16.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);


TextStyle priceNotAvailableStyleWithDiscount = TextStyle(
  fontSize: 17.0,
  color: Colors.grey[400],
  fontFamily: 'Roboto',
  fontWeight: FontWeight.bold,
    decoration: TextDecoration.lineThrough
);

TextStyle priceNotAvailableStyle = TextStyle(
  fontSize: 17.0,
  color: Colors.grey[400],
  fontFamily: 'Roboto',
  fontWeight: FontWeight.bold,
);

TextStyle lightGreyStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.grey.withOpacity(0.6),
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

// List Item Style End

// AppBar Style Start
const TextStyle appbarHeadingStyle = TextStyle(
  color: Colors.black,
  fontSize: 16.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);
TextStyle appbarSubHeadingStyle = TextStyle(
  color: whiteColor,
  fontSize: 16.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);
// AppBar Style End

// Search text style start
const TextStyle searchTextStyle = TextStyle(
  color: companyNameColor,
  fontSize: 14.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

const TextStyle hintTextStyle = TextStyle(
  color: lightGreyColor,
  fontSize: 16.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);
// Search text style start
const TextStyle notAvailableOutletMessage =TextStyle(
  color: primaryColor,
  fontSize: 14,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,);
// Search text style end

// Search History text style start



TextStyle outOfStock = TextStyle(
  fontSize: 14.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
);

TextStyle nearByOutlet = TextStyle(
  fontSize: 18.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

// Search History text style End
TextStyle wbuttonWhitePaymentReceivedbuttonStyle = TextStyle(
  fontSize: 14.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);
class AppSizes {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const app_bar_size = 56.0;
  static const app_bar_expanded_size = 180.0;
  static const tile_width = 148.0;
  static const tile_height = 276.0;

  static const double form_text_field_font_size = 18;
}

class AppColors {
  //static const primaryColor = Color(0xFFb72029);
  //static const darkPrimaryColor = Color(0xFFFFFFFF);
  //static const red = Color(0xFFDB3022);
  //static const black = Color(0xFF222222);
  static const lightGray = Color(0xFF9B9B9B);
  static const darkGray = Color(0xFF979797);
  static const textFieldBackground = Color(0xFFD2D2D2);
  //static const white = Color(0xFFFFFFFF);
  static const orange = Color(0xFFFFBA49);
  static const background = Color(0xFFE5E5E5);
  static const backgroundLight = Color(0xFFF9F9F9);
  //static const transparent = Color(0x00000000);
  static const success = Color(0xFF2AA952);
  static const green = Color(0xFF2AA952);
  static const gray = Color.fromRGBO(177, 177, 177, 1);
  //static const Color blue = Colors.blueAccent;
  static const Color warm_grey = Color.fromRGBO(147, 147, 147, 1);
  static const Color vividYellow = Color.fromRGBO(195, 230, 23, 1);
  static const Color greenDark = Color.fromRGBO(46, 139, 53, 1);

  static const Color black = Colors.black;
  static const Color blue = Colors.blueAccent;
  static const Color transparent = Colors.transparent;
  static const Color white = Color.fromRGBO(252, 252, 250, 1);
}
