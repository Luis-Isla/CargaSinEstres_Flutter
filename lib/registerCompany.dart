import 'package:flutter/material.dart';
import 'package:tb3_appmobi/database/Companydb.dart';
import 'package:tb3_appmobi/login.dart';
import 'package:tb3_appmobi/modelo/company.dart';


class registerCompany extends StatefulWidget {
  const registerCompany({super.key});

  @override
  State<registerCompany> createState() => _registerCompanyState();
}

class _registerCompanyState extends State<registerCompany> {

  final nombreEmpresaController = TextEditingController();
  final correoEmpresaController = TextEditingController();
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
                Text('Cuenta de empresa',style: TextStyle(
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
                        controller: nombreEmpresaController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Nombre de la empresa',

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
                        controller: correoEmpresaController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Correo de la empresa',
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
                          hintText: 'Direccion',
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
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Contraseña',
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
                          hintText: 'Confirmar contraseña',
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
                            Company nuevaCompany = Company(
                                nombreEmpresa: nombreEmpresaController.text,
                                correoEmpresa: correoEmpresaController.text,
                                direccion: direccionController.text,
                                telefono: telefonoController.text,
                                password: passwordController.text);

                            CompanyDB companyDB = CompanyDB();

                            await companyDB.insertarCompany(nuevaCompany);

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



