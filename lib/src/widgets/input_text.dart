import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon? icono;
  final TextInputType keyboard;
  final bool obsecure;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const InputText({
    Key? key,
    required this.label,
    required this.hint,
    this.icono,
    this.keyboard = TextInputType.text,
    this.obsecure = false,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      obscureText: obsecure,
      onChanged: onChanged,
      validator: validator as String? Function(String?)?, // Ajuste aquí
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: TextStyle(color: Colors.blueGrey, fontFamily: "PoiretOne"),
        suffixIcon: icono,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
}
