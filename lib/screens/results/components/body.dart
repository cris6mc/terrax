import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const [
              Text("Lugar: Oxapampa"),
              Text("Tipo de suelo: Arcilloso"),
              Text("pH: 6.9"),
              Text("Humedad: 20%"),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.all(12),
          decoration: const BoxDecoration(),
          child: Column(
            children: const [
              Text(
                "Segun los datos ingresados el terreno produciria mas si los cultivos fueran: ",
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
              Text("Necesita: Subministrar mas nitrato al terreno"),
              SizedBox(height: 30),
              Text(
                "Si desea cultivar papa:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.indigo),
              ),
              Text(
                  "Necesita: Subministrar mas sulfato al terreno y disminuir la humedad al 5%"),
            ],
          ),
        ),
        const SizedBox(height: 100),
        Image.asset('assets/images/cosecha.jpg'),
      ],
    );
  }
}
