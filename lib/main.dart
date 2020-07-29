import 'package:flutter/material.dart';
import 'package:loguin_sistema_coop/src/pages/home_page.dart';
import 'package:loguin_sistema_coop/src/pages/login_page.dart';
import 'package:loguin_sistema_coop/src/pages/transfer_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
        'transfer': (BuildContext context) => TransferPage(),
      },
      initialRoute: 'login',
    );
  }
}
