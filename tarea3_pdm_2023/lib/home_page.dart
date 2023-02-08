import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
      final List<Map<String, String>> _listElements = [
    {
      "act": "Day 1",
      "name": "Mountains",
      "image": "https://www.latlong.net/photos/alien-covenant.jpg",
    },
    {
      "act": "Day 2",
      "name": "Caves",
      "image": "https://cavesofaltamira.files.wordpress.com/2017/05/aliencovenant.jpg?w=1118&h=466&crop=1",
    },
    {
      "act": "Day 3",
      "name": "Forest",
      "image": "https://images.squarespace-cdn.com/content/v1/52c9d908e4b0e87887310693/1557163616342-LL9ZRU6QK0OOQGO2WZUO/Covenant_10.png?format=1000w",
    },
    {
      "act": "Day 4",
      "name": "Base of mountains",
      "image": "https://tldrmoviereviewsblog.files.wordpress.com/2017/05/alien-covenant-banner.jpg",
    },
    {
      "act": "Day 5",
      "name": "Rainforest",
      "image": "https://i.pinimg.com/originals/aa/30/a4/aa30a4ea8ee4e1e828d2cef3ca7b69fd.jpg",
    },
  ];
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.green,
                    height: screenHeight * 0.25,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network("https://www.scified.com/media/alien-covenant-explosion-731198.png", fit: BoxFit.fill,),
                   // child: Positioned.fill(
                    //child: Image.network("https://www.scified.com/media/alien-covenant-explosion-731198.png", fit:BoxFit.fill)),
                    
                  ),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                            actividad: _listElements[index]["act"]!,
                            nombre: _listElements[index]["name"]!,
                            imagen: _listElements[index]["image"]!,
                          );
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content:Text("Reservación en progreso")));
                      },
                      child: Text("Start booking",style: TextStyle(color: Colors.white)),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
