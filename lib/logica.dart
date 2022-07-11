class Suelo {
  final double ph;
  final double humendad;
  final Region region;
  final Tipo tipo;

  Suelo(this.ph, this.humendad, this.region, this.tipo);

  String estadoPh(){
    String suelo = "parametro no valido";
    if(ph>0 && ph<=3 ){
      suelo = "Tierra muy Alcalina";
    }
    else if (ph>3 && ph<=7 ){
      suelo = "Tierra neutral";
    }
    else if (ph>7 && ph<=10){
      suelo = "Tierra un poco acida";
    }
    else if(ph>10 && ph<=14){
      suelo = "Tierra muy acida";
    }

    return suelo;
  }


}


enum Region {
  JUNIN,
  PASCO,
  LIMA,
  TRUJILLO,
  CUZCO,
}

enum Tipo{
  ARCILLOSO,
  ARENOSO,
  ROCOSO,
}