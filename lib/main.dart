import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terrax',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Terrax'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: (
       const FormCard()
      ),

    );
  }
}




class FormCard extends StatefulWidget {
  const FormCard({Key? key}) : super(key: key);

  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard>{
  TextEditingController textLugar = TextEditingController();
  TextEditingController textTipo = TextEditingController();
  TextEditingController textpH = TextEditingController();
  TextEditingController textHumedad = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20), 
          Image.asset('lib/images/agricultura.jpg'),
          const SizedBox(height: 20),
          _inputLugar(),
          const SizedBox(height: 10),
          _inputSuelo(),
          const SizedBox(height: 10),
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              child: _inputPH(),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              child: _inputHumedad(),
            ),
          ],
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 30,
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageResult(lugar: textLugar, tipo: textTipo, pH: textpH, humedad: textHumedad)));
                },
                child: const Text('Calcular resultados')),
          ),

        ],
      ),
    );
  }
  Container _inputLugar(){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: textLugar,
        keyboardType: TextInputType.name,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          labelText: "Lugar",
          hintText: 'Ingrese el lugar',
          labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Container _inputSuelo(){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: textTipo,
        //inputFormatters: [cardMask],
        keyboardType: TextInputType.name,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          labelText: "Tipo de suelo",
          labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
          hintText: 'Ingrese el tipo del suelo',
          border: InputBorder.none,
        ),
      ),
    );
  }

  Container _inputPH(){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: textpH,
        //inputFormatters: [dateMask],
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          labelText: "pH",
          hintText: 'pH',
          labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Container _inputHumedad(){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: textHumedad,
        //inputFormatters: [codeMask],
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          labelText: "Humedad",
          hintText: 'Humedad',
          labelStyle: TextStyle(fontSize: 24, color: Colors.blue),
          border: InputBorder.none,
        ),
      ),
    );
  }
}



class PageResult extends StatelessWidget{
  final lugar;
  final tipo;
  final pH;
  final humedad;

  const PageResult({Key? key,required this.lugar,required this.tipo,required this.pH,required this.humedad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terrax'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Lugar:  $lugar"),
                Text("Tipo de suelo:  $tipo"),
                Text("pH:  $pH"),
                Text("Humedad:  $humedad"),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(

            ),
            child: Column(
              children: [
                Text("Segun los datos ingresados el terreno produciria mas si los cultivos fueran: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),
                ),
                SizedBox(height: 20),
                Text("Cafe, Platanos ó Palta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
                ),
                SizedBox(height: 40),
                Text("Si desea cultivar arroz:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.indigo),
                ),
                Text("Necesita: Subministrar mas nitrato al terreno"),
                SizedBox(height: 30),
                Text("Si desea cultivar papa:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.indigo),
                ),
                Text("Necesita: Subministrar mas sulfato al terreno y disminuir la humedad al 5%"),
              ],
            ),
          ),
          SizedBox(height: 100),
          Image.asset('lib/images/cosecha.jpg'),
        ],
      ),
    );
  }
}
