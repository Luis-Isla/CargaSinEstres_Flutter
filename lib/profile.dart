import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //img web normal, en assets -> pubspec.yaml
      appBar: AppBar(
        //title: Text('¡Hola, Esteban!'),
        backgroundColor: Colors.brown,



      ),

      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none, //permisos para salir
            children: [
              Container(
                height: 178,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text('¡Hola, Esteban!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),



                    ],
                  ),

                ),
                decoration: BoxDecoration(
                  color: Colors.brown,

                ),

              ),

              Positioned(
                  bottom: -100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWRy9rvA4ybNUm7EUvEfeQi-PwUNWf7IRWag&s'),
                    radius: 100,
                  )),




            ],

          ),
          SizedBox(
            height: 120,
          ),
          Column(
            children: [
              Text('Nombre: Esteban Lorax',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('Apellido: Fernandez Pasco',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('Direccion: Avenida Siempreviva 777',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('Celular: 912345678',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('Correo: estebfer777@gmail.com',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          )


        ],


      ),

    );
  }
}
