import 'package:flutter/material.dart';

class CreateCustomField extends StatelessWidget {
  final bool obscure;
  final IconData icon;
  final String text;
  final TextInputType type;

  const CreateCustomField(
      {Key key,
      this.obscure = false,
      @required this.icon,
      @required this.text,
      @required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
