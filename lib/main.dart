import 'package:flutter/material.dart';
import 'package:loguin_sistema_coop/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'login': (BuildContext context) => LoginPage(),
      },
      initialRoute: 'login',
    );
  }
}
