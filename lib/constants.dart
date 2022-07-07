import 'package:flutter/material.dart';
import 'package:terrax/size_config.dart';

const kPrimaryColor = Colors.cyan;
const kPrimaryColorQueastion = Color(0xFF000000);
const kPrimaryTitle = Color(0xFF311B92);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final List<String> values = [];

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kInvalidCitylError = "Ingrese una CIUDAD correcto";
const String kCityNullError = "Por favor Ingrese la CIUDAD";
const String kInvalidSoillError = "Ingrese un SUELO correcto";
const String kSoilNullError = "Por favor Ingrese el tipo de SUELO";
const String kInvalidPhError = "Ingrese un PH correcto [0-14]";
const String kPhNullError = "Por favor Ingrese el tipo de suelo";
const String kInvalidHumidityError = "Ingrese una HUMEDAD correcto [5-50]";
const String kHumidityNullError = "Por favor Ingrese la HUMEDAD";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
