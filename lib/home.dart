import 'package:flutter/material.dart';
import 'package:tb3_appmobi/MakeReservation.dart';
import 'package:tb3_appmobi/profile.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png', // Asegúrate de tener un logo en la carpeta assets
              height: 40,
            ),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar ...',
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(Icons.search),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.brown,
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Busqueda de empresas',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context){
                      return VistaMReservation();
                    }));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text('Realizar Reserva',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(child: Container()),
          Container(
            color: Colors.brown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.white,
                  onPressed: () {
                    // Agrega la funcionalidad que desees para el botón Home
                  },
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today),
                  color: Colors.white,
                  onPressed: () {
                    // Agrega la funcionalidad que desees para el botón Historial
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );

                  },
                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}
