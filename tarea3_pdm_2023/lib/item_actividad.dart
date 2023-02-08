import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {

  final String actividad;
  final String nombre;
  final String imagen;

  ItemActividad({
    super.key,
    required this.actividad,
    required this.nombre,
    required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Positioned.fill(
              child: Image.network(
                "$imagen",
                fit: BoxFit.fill,)),
            height: 120,
            width: 120,
            color: Colors.purple,
          ),
          Text("$actividad", style: TextStyle(fontSize: 11)),
          Text("$nombre"),
        ],
      ),
    );
  }
}
