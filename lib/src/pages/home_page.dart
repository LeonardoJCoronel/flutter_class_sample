import 'package:flutter/material.dart';
import 'package:navegar/src/pages/sign_in.dart';
import 'package:navegar/src/pages/sign_up.dart';
import 'package:navegar/src/widgets/icon_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
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
              const Text("Bienvenidos chicos a mi curso",
                  style: TextStyle(
                    fontFamily: "PermamentMarker",
                    fontSize: 30.0,
                  )),
              const Divider(
                height: 20.0,
              ),
              const Text("Ejercicio N°003",
                  style: TextStyle(
                    fontFamily: "PermamentMarker",
                    fontSize: 30.0,
                  )),
              const Divider(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                    onPressed: () {
                      final route =
                          MaterialPageRoute(builder: (context) => SignIn());
                      Navigator.push(context, route);
                    },
                    child: const Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "PoiretOne",
                          fontSize: 30.0),
                    )),
              ),
              const Divider(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                    onPressed: () {
                      final route =
                          MaterialPageRoute(builder: (context) => SignUp());
                      Navigator.push(context, route);
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PoiretOne",
                        fontSize: 30.0,
                      ),
                    )),
              )
            ],
          ),
        ),
      );
      
  }
}
