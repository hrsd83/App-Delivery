import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textDontHaveAccount(),
      ),
      body: Stack(
        //CON EL STACK SE SE POSICIONAN UNO ARRIBA DE OTRO
        children: [
          _backgroundCover(context),
          Column(
            //CON EL COLUMN SE  POSICIONAN UNO DEBAJO DEL OTRO
            children: [_imageCover(), _textAppName()],
          ),
        ],
      ),
    );
  }

  //WIDGET DEL FONDO BACKGROUNG
  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.amber,
    );
  }

  //WIDGET DEL TITULO DE LA APP
  Widget _textAppName() {
    return const Text(
      'APP DELIVERY',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //WIDGET DE OPCIONES DE LA CUENTA Y REGISTRARSE
  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //PERMITE UBICAR ELEMENTOS UNO AL LADO DE OTRO (HORIZONTALMENTE)
      children: const [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        SizedBox(width: 30),
        Text(
          'Registrate aqui ',
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }

  //widget de la imagen
  //PRIVATE
  Widget _imageCover() {
    return SafeArea(
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          child: Image.asset(
            'assets/img/logo2.webp',
            width: 200,
            height: 130,
            
            
          )),
    );
  }
}
