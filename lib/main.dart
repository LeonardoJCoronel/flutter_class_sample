
import 'package:flutter/material.dart';
import 'package:navegar/src/pages/home_page.dart';
import 'package:navegar/src/pages/sign_in.dart';
import 'package:navegar/src/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //Crear las rutas de navegacion
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "Home",
      routes: <String, WidgetBuilder>{
        "Home" : (BuildContext context) => HomePage(),
        "Sign_In" : (BuildContext context) => SignIn(),
        "Sign_Up": (BuildContext context) => SignUp(),
      },
      
    );
  }
}