import 'package:flutter/material.dart';
import 'package:tb3_appmobi/EmpresaDetail.dart';
import 'package:tb3_appmobi/HistoryReservation.dart';
import 'package:tb3_appmobi/MakeReservation.dart';
import 'package:tb3_appmobi/profile.dart';

class Empresa {
  final int? id;
  final String nombre;
  final String servicios;
  final String ubicacion;
  final String contacto;
  final double calificacion;

  Empresa({
    this.id,
    required this.nombre,
    required this.servicios,
    required this.ubicacion,
    required this.contacto,
    required this.calificacion,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'servicios': servicios,
      'ubicacion': ubicacion,
      'contacto': contacto,
      'calificacion': calificacion,
    };
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {
  final List<Empresa> empresas = [
    Empresa(
      nombre: 'PractiMudanza',
      servicios: 'Mudanzas y embalaje',
      ubicacion: 'San Miguel',
      contacto: '912476283',
      calificacion: 4.5,
    ),
    Empresa(
      nombre: 'TecnoRepara',
      servicios: 'Reparación de electrodomésticos',
      ubicacion: 'Miraflores',
      contacto: '987654321',
      calificacion: 4.8,
    ),
    Empresa(
      nombre: 'Limpieza Express',
      servicios: 'Limpieza de oficinas y hogares',
      ubicacion: 'Surco',
      contacto: '923456789',
      calificacion: 4.6,
    ),
    Empresa(
      nombre: 'Pinturas Master',
      servicios: 'Pintura y remodelaciones',
      ubicacion: 'La Molina',
      contacto: '934567890',
      calificacion: 4.7,
    ),
    Empresa(
      nombre: 'Jardines Verdes',
      servicios: 'Diseño y mantenimiento de jardines',
      ubicacion: 'San Borja',
      contacto: '945678901',
      calificacion: 4.9,
    ),
    Empresa(
      nombre: 'Tech Solutions',
      servicios: 'Desarrollo de software y consultoría',
      ubicacion: 'San Isidro',
      contacto: '956789012',
      calificacion: 4.4,
    ),
    Empresa(
      nombre: 'Delivery Rápido',
      servicios: 'Servicios de mensajería y entrega',
      ubicacion: 'Barranco',
      contacto: '967890123',
      calificacion: 4.3,
    ),
    Empresa(
      nombre: 'Mecánica Total',
      servicios: 'Taller de reparación automotriz',
      ubicacion: 'Lince',
      contacto: '978901234',
      calificacion: 4.7,
    ),
    Empresa(
      nombre: 'Salud a Domicilio',
      servicios: 'Servicios médicos y enfermería',
      ubicacion: 'Magdalena',
      contacto: '989012345',
      calificacion: 4.5,
    ),
    Empresa(
      nombre: 'ElectroFix',
      servicios: 'Reparación de dispositivos electrónicos',
      ubicacion: 'Pueblo Libre',
      contacto: '990123456',
      calificacion: 4.6,
    ),
    Empresa(
      nombre: 'Guardería Canina',
      servicios: 'Cuidado y adiestramiento de mascotas',
      ubicacion: 'San Juan de Miraflores',
      contacto: '901234567',
      calificacion: 4.8,
    ),
    Empresa(
      nombre: 'Eventos Top',
      servicios: 'Organización de eventos y catering',
      ubicacion: 'Jesús María',
      contacto: '912345678',
      calificacion: 4.7,
    ),
    Empresa(
      nombre: 'Confecciones Lima',
      servicios: 'Confección de ropa a medida',
      ubicacion: 'Breña',
      contacto: '923456789',
      calificacion: 4.4,
    ),
  ];

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

          //AQUI AGREGAR LA FUNCION
          Expanded(
            child: ListView.builder(
              itemCount: empresas.length,
              itemBuilder: (context, index) {
                final empresa = empresas[index];
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.local_shipping, size: 50),
                    title: Text(empresa.nombre),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(empresa.servicios),
                        Text(empresa.ubicacion),
                        Text('Nro contacto: ${empresa.contacto}'),
                        Row(
                          children: [
                            Text('Calificación: ${empresa.calificacion}'),
                            Icon(Icons.star, size: 16, color: Colors.yellow),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmpresaDetalle(empresa: empresa),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Historial()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
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

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      body: Center(
        child: Text("Página de perfil"),
      ),
    );
  }
}