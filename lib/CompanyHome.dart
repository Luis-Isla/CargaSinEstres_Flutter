import 'package:flutter/material.dart';

class CompanyHome extends StatelessWidget {
  const CompanyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista con Tarjetas'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.brown,
                margin: EdgeInsets.only(bottom: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Historial de Reservas',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Reservas aceptadas o por reproramar.',
                        style: TextStyle(fontSize: 16.0,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            // Manejar la acción del botón
                          },
                          child: Text('Ver más'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.brown,
                margin: EdgeInsets.only(bottom: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Historial de Reseñas de clientes',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Reseñas por filtro de calificación y sugerencias',
                        style: TextStyle(fontSize: 16.0,
                            color: Colors.white),

                      ),
                      SizedBox(height: 20.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            // Manejar la acción del botón
                          },
                          child: Text('Ver más'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}