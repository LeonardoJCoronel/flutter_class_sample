import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/login_form.dart';

import '../widgets/icon_containers.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 8, 11, 158),
            Color.fromARGB(204, 41, 77, 197),
            Color.fromARGB(204, 127, 166, 240),
          ], begin: Alignment.topLeft)),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 200,
            ),
            children: <Widget>[
              //Aqui ubicaremos el url de una imagen
              const IconContainers(
                url: "images/avatar.jpg",
              ),
              const Text("Login",
                  style: TextStyle(
                    fontFamily: "PermamentMarker",
                    fontSize: 30.0,
                  )),
              const Divider(
                height: 20.0,
              ),
              const Text("Pagina N°2",
                  style: TextStyle(
                    fontFamily: "PermamentMarker",
                    fontSize: 30.0,
                  )),
              const Divider(
                height: 20.0,
              ),
              LoginForm()
              // Aqui llamamos a la pantalla del formulario
            ],
          ),
        ),
      ),
    );
  }
}
