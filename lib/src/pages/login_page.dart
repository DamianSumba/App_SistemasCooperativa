import 'package:flutter/material.dart';
import 'package:loguin_sistema_coop/src/widgets/create_custom_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: _createBody(size, context),
    );
  }

  SafeArea _createBody(Size size, BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _createHeader(size),
              _createForm(size, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createForm(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      // color: Colors.purple,
      width: size.width * 0.80,
      child: Form(
        child: Column(
          children: [
            CreateCustomField(
                icon: Icons.email,
                text: 'email',
                type: TextInputType.emailAddress),
            SizedBox(height: 10),
            CreateCustomField(
              icon: Icons.vpn_key,
              text: 'password',
              type: TextInputType.text,
              obscure: true,
            ),
            SizedBox(height: 10),
            _cretateButtonForgetPassword(),
            _createButtonSubmit(size, context),
          ],
        ),
      ),
    );
  }

  Widget _createButtonSubmit(Size size, BuildContext context) {
    return Container(
      width: size.width * 0.80,
      child: RaisedButton(
        color: Colors.green[300],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Text('INGRESAR', style: TextStyle(color: Colors.white)),
        onPressed: () {
          print('Ingreso');
          // no regresa a la pagina anterior
          Navigator.pushReplacementNamed(context, 'home');
          //regresa a la pagina anterior
          // Navigator.pushNamed(context, 'home');
        },
      ),
    );
  }

  Row _cretateButtonForgetPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: FlatButton(
            child: Text('Olvidó su contraseña?'),
            onPressed: () {
              print('click');
            },
          ),
        ),
      ],
    );
  }

  Center _createHeader(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.80,
        height: size.height * 0.30,
        // color: Colors.red,
        child: Image.asset('assets/imaLogo.png'),
      ),
    );
  }
}
