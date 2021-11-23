import 'package:flutter/material.dart';

class buscar extends StatefulWidget{
  @override
  buscarApp createState() => buscarApp(); //direccionamiento
}

class buscarApp extends State<buscar>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de búsqueda'),
      ),
    );
  }
}