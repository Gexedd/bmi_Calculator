import 'package:flutter/material.dart';


//Creacion de una tarjeta reutilizable en DART
//Widget de una tarjeta reutilizable, recibe parametros y uno de ellos es un widget
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPress}); //Constructor y con nombramiento especifico del parametro colour

  final Color colour; //Se crea una propiedad que cambiara en los otros widgets cuando se les haga click
  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, //Parametro del onPress
      child: Container(
        child: cardChild, //recibe un wdiget tipo cardChild (esto es un widget dentro del widget)
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
