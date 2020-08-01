import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: _createAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.purple,
          ),
        ),
      ),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      backgroundColor: Colors.green[300],
      centerTitle: true,
      title: Text('Configuraciones'),
    );
  }
}
