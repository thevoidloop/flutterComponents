import 'package:flutter/material.dart';
import 'package:fluttercomponents/widget/widgets.dart' show CustomInputField;

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inpus y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre de Usuario',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido de Usuario',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Correo de Usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Contraseña de Usuario',
                obcureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
