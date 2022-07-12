import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'test_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: getProportionateScreenHeight(300),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/agricultura.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          // SizedBox(height: SizeConfig.screenHeight * 0.04),
          // Image.asset('assets/images/agricultura.jpg'),
          Positioned(
              top: 260,
              child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  width: MediaQuery.of(context).size.width,
                  // height: getProportionateScreenHeight(1000),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Test de cultivo",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Rellene los datos",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.04),
                      const TestForm(),
                    ],
                  ))),
        ],
      ),
    );
  }
}
