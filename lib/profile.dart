import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(  // Envuelve el cuerpo en SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.brown),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '¡Hola, Esteban!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWRy9rvA4ybNUm7EUvEfeQi-PwUNWf7IRWag&s'),
                      radius: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 120),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoRow(label: 'Nombre: ', value: 'Esteban Lorax'),
                    InfoRow(label: 'Apellido: ', value: 'Fernandez Pasco'),
                    InfoRow(label: 'Dirección: ', value: 'Avenida Siempreviva 777'),
                    InfoRow(label: 'Celular: ', value: '912345678'),
                    InfoRow(label: 'Correo: ', value: 'estebfer777@gmail.com'),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Acción para editar perfil
                          },
                          child: Text("Editar Perfil"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Acción para cerrar sesión
                          },
                          child: Text("Cerrar Sesión"),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para cambiar a modo empresa
                        },
                        child: Text("Modo Empresa"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
