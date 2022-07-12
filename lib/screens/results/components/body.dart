import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Result.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 20),
            Text("Lugar: Oxapampa"),
            Text("Tipo de suelo: Arcilloso"),
            Text("pH: 6.9"),
            Text("Humedad: 20%"),
            SizedBox(height: 20),
            Text(
              "Segun los datos ingresados el \nterreno produciria mas\n si los cultivos fueran: ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green),
            ),
            SizedBox(height: 20),
            Text(
              "Cafe, Platanos ó Palta",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey),
            ),
            SizedBox(height: 40),
            Text(
              "Si desea cultivar arroz:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.indigo),
            ),
            Text("Necesita: Subministrar\n mas nitrato al terreno"),
            SizedBox(height: 30),
            Text(
              "Si desea cultivar papa:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.indigo),
            ),
            Text(
                "Necesita: Subministrar \nmas sulfato al terreno y disminuir la humedad al 5%",
                textAlign: TextAlign.center),
          ],
        )
      ]),
    );
  }
}
