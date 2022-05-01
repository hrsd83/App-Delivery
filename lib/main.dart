import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/login/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

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
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppDelivery',
      initialRoute: '/',
      getPages:  [
        GetPage(name: '/', page: () => const LoginPage())

      ],
      navigatorKey: Get.key,
       
    );
  }
}