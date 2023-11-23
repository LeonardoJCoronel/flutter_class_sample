import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/input_text.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}



class _RegisterFormState extends State<RegisterForm> {
late String _username;
late String _name;
late String _email;
late String _password;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: <Widget>[
            InputText(
              hint: "Username",
              label: "Username",
              keyboard: TextInputType.text,
              icono: const Icon(Icons.supervised_user_circle_sharp),
              onChanged: (data) {
                _username = data!;
              },
              validator: (data) {
                if (data!.trim().isEmpty) {
                  return "Usuario invalido";
                }
                return null!;
              },
            ),
            Divider(height: 20.0),
            InputText(
              hint: "Name",
              label: "Name",
              keyboard: TextInputType.text,
              icono: const Icon(Icons.text_decrease),
              onChanged: (data) {
                _name = data!;
              },
              validator: (data) {
                if (data!.trim().isEmpty) {
                  return "Nombres invalidos";
                }
                return null!;
              },
            ),
            Divider(height: 20.0),
            InputText(
              hint: "Email Address",
              label: "Email Address",
              keyboard: TextInputType.emailAddress,
              icono: const Icon(Icons.email),
              onChanged: (data) {
                this._email = data!;
              },
              validator: (data) {
                if (data!.contains("@") || data.trim().isEmpty) {
                  return "Email invalido";
                }
                return null!;
              },
            ),
            Divider(height: 20.0),
            InputText(
              hint: "User password",
              label: "User password",
              keyboard: TextInputType.text,
              icono: const Icon(Icons.password),
              onChanged: (data) {
                _password = data!;
              },
              validator: (data) {
                if (data!.trim().isEmpty) {
                  return "Contraseña invalida";
                }
                return null!;
              },
            ),
            Divider(height: 20.0),
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PoiretOne",
                      fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
