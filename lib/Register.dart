import 'package:flutter/material.dart';
import 'package:tb3_appmobi/home.dart';
import 'package:tb3_appmobi/login.dart';
import 'package:tb3_appmobi/registerCompany.dart';
import 'package:tb3_appmobi/registerCustomer.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
                Text('Registrar nueva cuenta',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),

                Text('Elija el tipo de cuenta',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),

                SizedBox(
                  height: 20,
                ),


                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [

                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return registerCustomer();
                        }));
                      },

                      child: Container(
                        height: 270,
                        margin: EdgeInsets.only(
                          bottom: 10,
                          top: 10,
                        ),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 20,
                        ),

                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  offset: new Offset(7, 7),
                                  blurRadius: 10,
                                )
                              ]),


                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:AssetImage('assets/img/registerCustomer.jpg'),
                                    ),
                                  ),
                                ),

                                Flexible(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Cuenta Customer',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,

                                            ),),

                                          SizedBox(
                                            height: 20,
                                          ),


                                          Text('Crear una cuenta de cliente en un servicio de mudanza permite coordinar y seguir el progreso de la mudanza, comunicarse con el equipo y acceder al historial de servicios.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,

                                            ),),

                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ),


                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return registerCompany();
                        }));
                      },

                      child: Container(
                        height: 270,
                        margin: EdgeInsets.only(
                          bottom: 10,
                          top: 10,
                        ),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 20,
                        ),

                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  offset: new Offset(7, 7),
                                  blurRadius: 10,
                                )
                              ]
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:AssetImage('assets/img/registerCompany.jpg'),
                                    ),
                                  ),
                                ),

                                Flexible(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Cuenta Company',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,

                                            ),),

                                          SizedBox(
                                            height: 20,
                                          ),


                                          Text('Cuenta de empresa en un servicio de mudanza que '
                                              'permite gestionar clientes, coordinar mudanzas, asignar '
                                              'equipos y vehículos, y acceder al historial de servicios prestados.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),),

                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                        ),
                      ),

                    )











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
