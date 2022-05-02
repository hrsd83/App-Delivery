import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //CON EL STACK SE SE POSICIONAN UNO ARRIBA DE OTRO
        children: [
          // _backgroundCover(context),
          Column(
              //CON EL COLUMN SE  POSICIONAN UNO DEBAJO DEL OTRO
              // children: [_imageCover(), _textAppName()],
              ),
        ],
      ),
    );
  }
}
