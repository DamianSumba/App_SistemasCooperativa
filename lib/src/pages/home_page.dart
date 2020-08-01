import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //tamaño de la pantalla
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: _createAppBar(),
        body: _createBody(size, context));
  }

  SafeArea _createBody(Size size, BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: size.width * 0.8,
          height: size.height * 0.6,
          //decoration para border del container
          // en este caso redondeados
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.white,
          ),
          child: Container(
            child: Column(
              //alineacion vertical en un column
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _createButton(Icons.person, 'Usuario', () {}),
                    _createButton(
                      Icons.attach_money,
                      'Transferencias',
                      () {
                        Navigator.pushNamed(context, 'transfer');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _createButton(Icons.credit_card, 'Créditos', () {}),
                    _createButton(
                      Icons.settings,
                      'Configuraciones',
                      () {
                        Navigator.pushNamed(context, 'setting');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createButton(IconData icon, String text, Function onPressed) {
    //Recibe icono del boto y la funcion a realizar en el onpressed
    return Column(
      children: [
        IconButton(
            iconSize: 100,
            icon: Icon(
              icon,
              color: Colors.green[300],
            ),
            onPressed: onPressed),
        Text(text,
            style: TextStyle(
                color: Colors.green[300],
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      backgroundColor: Colors.green[400],
      centerTitle: true,
      title: Text('Usuario'),
      actions: [
        IconButton(
          icon: Icon(Icons.message),
          onPressed: () {
            print('click mensaje');
          },
        ),
        IconButton(icon: Icon(Icons.notifications), onPressed: () {})
      ],
    );
  }
}
