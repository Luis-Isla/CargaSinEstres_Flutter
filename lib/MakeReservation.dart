import 'package:flutter/material.dart';

class VistaMReservation extends StatefulWidget {
  const VistaMReservation({super.key});

  @override
  State<VistaMReservation> createState() => _VistaMReservationState();
}

class _VistaMReservationState extends State<VistaMReservation> {

  final typeService = TextEditingController();
  final addressPickup = TextEditingController();
  final addressDelivery = TextEditingController();
  final timePickup = TextEditingController();
  final datePickup = TextEditingController();
  final noCard = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Realizar Reserva'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: typeService,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Tipo de servicio',
                labelText: 'Tipo de servicio: ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: addressPickup,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Direccion de recojo',
                labelText: 'Direccion de recojo: ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: addressDelivery,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Direccion de entrega',
                labelText: 'Direccion de entrega: ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: timePickup,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Hora de recojo',
                labelText: 'Hora de recojo: ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: datePickup,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'Fecha de recojo',
                labelText: 'Fecha de recojo: ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: noCard,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Numero de tarjeta',
                labelText: 'Numero de tarjeta: ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aquí puedes agregar la funcionalidad que desees
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text(
                  'Reserva',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

