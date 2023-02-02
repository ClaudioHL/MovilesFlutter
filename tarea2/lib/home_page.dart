//nuev snippet satelessw
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  bool tap = false;

  bool tep = false;

  bool tip = false;

  bool top = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Bienvenidos al ITESO'),
        ),
        body: ListView( 
          children: [
          Image.network(
            "https://www.iteso.mx/image/journal/article?img_id=2252404&t=1432696736760"
            ),
            ListTile(
              title: Text("El ITESO, Universidad Jesuita de Guadalajara"),
              subtitle: Text("Periférico Sur 8585"),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  IconButton(
                    color:tap?Colors.indigo:Colors.black54,
                    onPressed: (){
                      counter++;
                      tap=!tap;
                      setState(() {});
                    }, 
                    icon: Icon(Icons.thumb_up),),
                    Text("$counter")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      color:tep?Colors.indigo:Colors.black54,
                      onPressed: (){
                        tep=!tep;
                        setState(() {});
                        ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content:Text("Puedes encontrar comida en sus cafeterias")));
                    }, icon: Icon(Icons.fastfood_sharp)),
                    Text("Comida")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      color:tip?Colors.indigo:Colors.black54,
                      onPressed: (){
                        tip=!tip;
                        setState(() {});
                        ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content:Text("Puedes pedir información en rectoría")));
                      }, icon: Icon(Icons.info_outline)),
                    Text("Información")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      color:top?Colors.indigo:Colors.black54,
                      onPressed: (){
                        top=!top;
                        setState(() {});
                        ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content:Text("Se encuentra ubicado en Periférico Sur 8585")));
                      }, icon: Icon(Icons.location_on_outlined)),
                    Text("Ubicación")
                  ],
                )
              ],),
        
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "El ITESO, Universidad Jesuita de Guadalajara, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957",
                  textAlign: TextAlign.justify,
                ),
              )
        ],
       ),
      );
  }
}