import 'package:flutter/material.dart';
import 'package:loguin_sistema_coop/src/widgets/create_custom_field.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key key}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: _createAppBar(),
      body: _createBody(size),
    );
  }

  SingleChildScrollView _createBody(Size size) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            _createAccountBalance(size),
            _createForm(size),
          ],
        ),
      ),
    );
  }

  Container _createForm(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.90,
      height: size.height * 0.60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.green[300],
      ),
      child: _createFormFields(size),
    );
  }

  Column _createFormFields(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: size.width * 0.80,
          child: CreateCustomField(
              icon: Icons.person,
              text: 'Transferir a',
              type: TextInputType.text),
        ),
        Container(
          width: size.width * 0.80,
          child: CreateCustomField(
              icon: Icons.arrow_forward,
              text: 'Número de Cuenta',
              type: TextInputType.number),
        ),
        Container(
          width: size.width * 0.80,
          child: CreateCustomField(
              icon: Icons.attach_money,
              text: 'Monto',
              type: TextInputType.numberWithOptions()),
        ),
        _createNewEntity(size),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _createButton(size, 'Cancelar', Colors.redAccent, () {
              Navigator.pop(context);
            }),
            _createButton(size, 'Transferir', Colors.green, () {}),
          ],
        ),
      ],
    );
  }

  Container _createButton(
      Size size, String title, Color color, Function onPressed) {
    return Container(
      width: size.width * 0.35,
      height: 50,
      child: RaisedButton(
        color: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: onPressed,
      ),
    );
  }

  Container _createNewEntity(Size size) {
    return Container(
      width: size.width * 0.80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Checkbox(
                activeColor: Colors.white,
                checkColor: Colors.green[300],
                value: state,
                onChanged: (value) {
                  setState(() {
                    state = value;
                  });
                }),
          ),
          Container(
            width: size.width * 0.60,
            child: CreateCustomField(
              icon: Icons.business,
              text: 'Diferente entidad',
              type: TextInputType.text,
              enabled: state,
            ),
          ),
        ],
      ),
    );
  }

  Widget _createAccountBalance(Size size) {
    return Container(
      height: size.height * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Saldo de Cuenta',
            style: TextStyle(
                color: Colors.green, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white),
              child: TextField(
                enabled: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintStyle:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  hintText: '\$300.00',
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      backgroundColor: Colors.green[300],
      centerTitle: true,
      title: Text('Transferencias'),
    );
  }
}
