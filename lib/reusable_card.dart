import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPress}); //Constructor y con nombramiento especifico del parametro colour

  final Color colour; //Se crea una propiedad que cambiara en los otros widgets cuando se les haga click
  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
          colour, //Ahora le paso el color cada vez que se construye el widget
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
