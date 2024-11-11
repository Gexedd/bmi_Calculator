import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {required this.icon,
        required this.onPressed}); //Este es el constructor y se le asigna la varible icono

  final IconData icon; //Variable icono
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 20.0,
      constraints: BoxConstraints.tightFor(width: 45, height: 45),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      onPressed: onPressed,
    );
  }
}
