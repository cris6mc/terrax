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
  //var cardMask = new MaskTextInputFormatter(mask: '#### #### #### ####', filter: { "#": RegExp(r'[0-9]') });
  //var dateMask = new MaskTextInputFormatter(mask: '##/##', filter: { "#": RegExp(r'[0-9]') });
  //var codeMask = new MaskTextInputFormatter(mask: '###', filter: { "#": RegExp(r'[0-9]') });
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageResult()));
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
        keyboardType: TextInputType.name,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          hintText: 'Ingrese el lugar',
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
        //inputFormatters: [cardMask],
        keyboardType: TextInputType.name,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
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
        //inputFormatters: [dateMask],
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          hintText: 'pH',
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
        //inputFormatters: [codeMask],
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          hintText: 'Humedad',
          border: InputBorder.none,
        ),
      ),
    );
  }
}



class PageResult extends StatelessWidget{
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
                Text("Lugar: Oxapampa"),
                Text("Tipo de suelo: Arcilloso"),
                Text("pH: 6.9"),
                Text("Humedad: 20%"),
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