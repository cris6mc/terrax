import 'package:flutter/material.dart';
import 'package:terrax/components/custom_surfix_icon.dart';
import 'package:terrax/components/form_error.dart';
// import 'package:flutter/services.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class TestForm extends StatefulWidget {
  const TestForm({Key? key}) : super(key: key);
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  late String city;
  late String soil;
  late String ph;
  late String humidity;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error = ""}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error = ""}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildCityFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSoilFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildHumidityFormField(),
          FormError(errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 7, 92, 59),
            ),
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: const Text('Calcular resultados', style: TextStyle(
              // fontSize: getProportionateScreenWidth(18),
              fontSize: 15,
              color: Colors.white,
            ),),
          ),
          // DefaultButton(
          //   "Continuar",
          //   () {
          //     // null;
          //    print(_formKey.currentState!.validate());
          //   // if (_formKey.currentState!.validate()){

          //   // }
          //     // if (_formKey.currentState.validate()) {
          //     //   _formKey.currentState.save();
          //     //   // if all are valid then go to success screen
          //     //   Navigator.pushNamed(context, LoginSuccessScreen.routeName);
          //     //   KeyboardUtil.hideKeyboard(context);
          //     // }
          //   },
          // ),
        ],
      ),
    );
  }

  //city
  TextFormField buildCityFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      // inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-14]'))],
      onSaved: (newValue) => city = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCityNullError);
        } else if (value.toLowerCase() == "oxapampa") {
          removeError(error: kInvalidCitylError);
        }
        city = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kCityNullError);
          return "";
        } else if (value.toLowerCase() == "oxapampa") {
          addError(error: kInvalidCitylError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "CIUDAD",
        hintText: "Ingresa su CIUDAD",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon("assets/icons/User.svg"),
      ),
    );
  }

  //soil
  TextFormField buildSoilFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onSaved: (newValue) => soil = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kSoilNullError);
        } else if (value.toLowerCase() == "arcilloso" ||
            value.toLowerCase() == "arenoso" ||
            value.toLowerCase() == "franco") {
          removeError(error: kInvalidSoillError);
        }
        soil = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kSoilNullError);
          return "";
        } else if (value.toLowerCase() == "arcilloso" ||
            value.toLowerCase() == "arenoso" ||
            value.toLowerCase() == "franco") {
          addError(error: kInvalidSoillError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "SUELO",
        hintText: "Ingresa el tipo de SUELO",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon("assets/icons/User.svg"),
      ),
    );
  }

  //ph
  TextFormField buildPhFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      // inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-14]'))],
      onSaved: (newValue) => ph = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          addError(error: kPhNullError);
        } else if (int.parse(value) >= 0 && int.parse(value) <= 14) {
          removeError(error: kInvalidPhError);
        }
        ph = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kInvalidPhError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "PH",
        hintText: "Ingresa el PH",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon("assets/icons/User.svg"),
      ),
    );
  }

  //humidity
  TextFormField buildHumidityFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      // inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[5-50]'))],
      onSaved: (newValue) => humidity = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kHumidityNullError);
        } else if (int.parse(value) >= 5 && int.parse(value) <= 50) {
          removeError(error: kInvalidHumidityError);
        }
        humidity = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kHumidityNullError);
          return "";
        } else if (int.parse(value) >= 5 && int.parse(value) <= 50) {
          addError(error: kInvalidHumidityError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "HUMEDAD",
        hintText: "Ingresa la HUMEDAD",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon("assets/icons/User.svg"),
      ),
    );
  }
}
