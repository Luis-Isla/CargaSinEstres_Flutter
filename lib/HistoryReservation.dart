import 'package:flutter/material.dart';
import 'package:tb3_appmobi/database/db.dart';
import 'package:tb3_appmobi/home.dart'; //

class Historial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de reservas'),
      ),
      body: FutureBuilder<List<Empresa>>(
        future: DatabaseHelper().getEmpresas(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay reservas'));
          } else {
            final empresas = snapshot.data!;
            return ListView.builder(
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
                        Text('Estado: En curso'),
                        Text('Dir. recojo: SMP'),
                        Text('Dir. entrega: ${empresa.ubicacion}'),
                        Text('Fecha inicio: 30-04-2024'),
                      ],
                    ),
                    trailing: Icon(Icons.info_outline),
                    onTap: () {
                      // Aquí puedes añadir navegación a una página de detalles de la reserva si es necesario
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
