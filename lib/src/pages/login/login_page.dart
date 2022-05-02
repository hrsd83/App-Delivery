import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/login/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginController control = Get.put(LoginController());

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
          _boxForm(context),
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
      height: MediaQuery.of(context).size.height * 0.43,
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

  // SE CREA EL FORM
  Widget _boxForm(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.45,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.35,
            left: 50,
            right: 50),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15,
                  offset: Offset(0, 0.75))
            ]),
        child: SingleChildScrollView(
          child: Column(children: [
            _textYourInfo(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
          ]),
        ));
  }

  //WIDGET DE INGRESAR INFORMACION
  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 50),
      child: const Text(
        'Ingresa tus Datos',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }

  //WIDGET DEL EMAIL
  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Correo electronico',
            prefixIcon: Icon(Icons.email),
          )),
    );
  }

  //WIDGET DEL PASSWORD

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: const TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Contraseña',
            prefixIcon: Icon(Icons.lock),
          )),
    );
  }

  //WIDGET DEL BUTTON

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15)),
          child: const Text(
            'LOGIN',
            style: TextStyle(color: Colors.black),
          )),
    );
  }

  //WIDGET DE OPCIONES DE LA CUENTA Y REGISTRARSE
  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //PERMITE UBICAR ELEMENTOS UNO AL LADO DE OTRO (HORIZONTALMENTE)
      children: [
        const Text(
          'No tienes cuenta?',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        const SizedBox(width: 30),
        GestureDetector(
          onTap: () => control.goToRegisterPage(),
          child: const Text(
            'Registrate aqui ',
            style: TextStyle(
                color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 17),
          ),
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
