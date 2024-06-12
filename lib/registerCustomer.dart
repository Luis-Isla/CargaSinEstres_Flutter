import 'package:flutter/material.dart';
import 'package:tb3_appmobi/database/Customerdb.dart';
import 'package:tb3_appmobi/login.dart';
import 'package:tb3_appmobi/modelo/customer.dart';


class registerCustomer extends StatefulWidget {
  const registerCustomer({super.key});

  @override
  State<registerCustomer> createState() => _registerCustomerState();
}

class _registerCustomerState extends State<registerCustomer> {
  final nombreCompletoController = TextEditingController();
  final apellidoPaternoController = TextEditingController();
  final apellidoMaternoController = TextEditingController();
  final correoController = TextEditingController();
  final direccionController = TextEditingController();
  final telefonoController = TextEditingController();
  final passwordController = TextEditingController();
  final repetirPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carga sin Estres',
          style: TextStyle(
              color: Colors.white),),
        backgroundColor: Colors.brown,
      ),

      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Cuenta Customer',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: nombreCompletoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Nombre completo',

                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: apellidoPaternoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Apellido paterno',
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: apellidoMaternoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Apellido materno',
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: telefonoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Telefono',
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: direccionController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Dirección',
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: correoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Correo',
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Contaseña',
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: repetirPasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Repetir contaseña',
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () async {
                          String password = passwordController.text;
                          String repetirPassword = repetirPasswordController.text;

                          if(password==repetirPassword){
                            Customer nuevoCustomer = Customer(
                                nombreCompleto: nombreCompletoController.text,
                                apellidoPaterno: apellidoPaternoController.text,
                                apellidoMaterno: apellidoMaternoController.text,
                                telefono: telefonoController.text,
                                direccion: direccionController.text,
                                correo: correoController.text,
                                password: passwordController.text);

                            CustomerDB customerDB = CustomerDB();

                            await customerDB.insertarCustomer(nuevoCustomer);

                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                              return login();
                            }));

                          }else {
                            // Las contraseñas no coinciden, muestra un mensaje de error
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Las contraseñas no coinciden')),
                            );
                          }


                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                        child: Text(
                          'Registrarse',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('¿Ya tienes una cuenta? '),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return login();
                        }));
                      },
                      child: Text(
                        'Inicia sesión',
                        style: TextStyle(color: Colors.brown),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




