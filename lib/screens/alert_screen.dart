import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.info,
        title: 'Info',
        animType: QuickAlertAnimType.slideInDown,
        barrierDismissible: false,
        text:
            'Magna mollit non irure officia pariatur commodo non pariatur sint irure id consectetur occaecat pariatur.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => displayDialog(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar Alerta'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
