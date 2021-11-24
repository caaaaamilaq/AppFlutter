import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'buscar.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MiApp());
}

//cambio1d
class MiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Grupo 02',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home - Aplicación grupo 02'),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:20, top: 20, right: 20, bottom: 0),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Image.asset('image/logo.png'),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:20, top: 20, right: 20, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Búsqueda',
                    hintText: 'Deseo encontrar...',
                  ),
                ),
              ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
                    child: ElevatedButton(
                      onPressed: (){
                        print("presionado");
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> buscar()));
                    },
                    child: Text('Buscar'),
                  ),
                 )
               ],
              ),
            ),
          ),
        );

  } //constructor
}
