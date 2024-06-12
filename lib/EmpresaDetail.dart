import 'package:flutter/material.dart';
import 'package:tb3_appmobi/home.dart';
import 'package:tb3_appmobi/database/db.dart';

class EmpresaDetalle extends StatelessWidget {
  final Empresa empresa;

  EmpresaDetalle({required this.empresa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(empresa.nombre),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png', // Asegúrate de tener un logo en la carpeta assets
                height: 100,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Ubicación: ${empresa.ubicacion}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.local_shipping),
                  onPressed: () {},
                  tooltip: 'Transporte',
                ),
                IconButton(
                  icon: Icon(Icons.inventory),
                  onPressed: () {},
                  tooltip: 'Carga',
                ),
                IconButton(
                  icon: Icon(Icons.archive),
                  onPressed: () {},
                  tooltip: 'Embalaje',
                ),
                IconButton(
                  icon: Icon(Icons.build),
                  onPressed: () {},
                  tooltip: 'Montaje',
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text(empresa.contacto),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text('practimudanza@gmail.com'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aquí puedes agregar la funcionalidad que desees
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    'Ver Reseña',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () async {
                    await DatabaseHelper().insertEmpresa(empresa);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Reserva guardada')));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    'Reservar',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('Calificación: '),
                Icon(Icons.star, color: Colors.yellow),
                Text('${empresa.calificacion}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
