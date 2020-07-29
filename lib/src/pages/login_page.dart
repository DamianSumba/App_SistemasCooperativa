import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: _createBody(size),
    );
  }

  SafeArea _createBody(Size size) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _createHeader(size),
              _createForm(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createForm(Size size) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      // color: Colors.purple,
      width: size.width * 0.80,
      child: Form(
        child: Column(
          children: [
            _createField(
                'Email', false, TextInputType.emailAddress, Icons.email),
            SizedBox(height: 10),
            _createField('Password', true, TextInputType.text, Icons.vpn_key),
            SizedBox(height: 10),
            _cretateButtonForgetPassword(),
            _createButtonSubmit(size),
          ],
        ),
      ),
    );
  }

  Widget _createButtonSubmit(Size size) {
    return Container(
      width: size.width * 0.80,
      child: RaisedButton(
        color: Colors.green[300],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Text('INGRESAR', style: TextStyle(color: Colors.white)),
        onPressed: () {
          print('Ingreso');
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

  Widget _createField(
      String text, bool obscure, TextInputType type, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        obscureText: obscure,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          icon: CircleAvatar(
            backgroundColor: Colors.green[100],
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          hintStyle: TextStyle(color: Colors.black),
          hintText: text,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        keyboardType: type,
      ),
    );
  }
}
