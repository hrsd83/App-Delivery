import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/login/login_page.dart';
import 'package:flutter_application/src/pages/register/register_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//Metodo initstate para ejecutar el primer codigo
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppDelivery',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => const RegisterPage()),
      ],
      theme: ThemeData(
          primaryColor: Colors.amber,
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            onBackground: Colors.grey,
            onSecondary: Colors.grey,
            onPrimary: Colors.grey,
            primary: Colors.amber,
            secondary: Colors.amberAccent,
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
            background: Colors.grey,
          )),
      navigatorKey: Get.key,
    );
  }
}
