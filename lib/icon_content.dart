import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98),);

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label}); //Constructor de la clase

  final IconData? icon; //Propiedad del constructor
  final String? label; //Propiedad del constructor

//Y despues viene el overrride donde se maqueta to do
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 60.0),
        SizedBox(height: 15.0),
        Text(label!,
          style: labelTextStyle,
        ),
      ],
    );
  }
}