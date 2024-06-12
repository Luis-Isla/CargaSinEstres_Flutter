import 'package:flutter/material.dart';
import 'package:tb3_appmobi/Register.dart';
import 'package:tb3_appmobi/home.dart';
import 'package:tb3_appmobi/modelo/passwordRecovery.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
                Icon(
                  Icons.account_circle_outlined, size: 100,

                ),

                Text('Iniciar Sesión',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),

                Text('ingrese su Email y Contraseña',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Correo o celular',
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
                        obscureText: true,
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return passwordRecovery();
                        }));
                      },
                      child: Text(
                        'Olvidé mi contraseña',
                        style: TextStyle(color: Colors.brown),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          // lógica para "Login"
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                        child: Text(
                          'Login',
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
                    Text('¿No tienes una cuenta? '),
                    TextButton(
                      onPressed: () {
                        // Redireccion para "Regístrate"
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return register();

                        }));
                      },
                      child: Text(
                        'Regístrate',
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


