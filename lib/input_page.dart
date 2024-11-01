import 'package:bmi_calculator/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';

const bottomContainerHeight = 80.0; //constante para el tamaño de la franja fuccia en el bottom de la app
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

//Creacion de enums gender
enum Gender {
  male, female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;


  //Color maleCardColor = inactiveCardColor;
  //Color femaleCardColor = inactiveCardColor; //Al crear estas variables nos permite cambiar el color de la card cuando sea seleccionada

/*
  //1 = male, 2 = female, este es un metodo para seleccionar el genero y cambiar el boton. Es la logica del negocio
  void updateColor (Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor= inactiveCardColor;
        }
    } else {
      if (selectedGender == Gender.female){
        if(femaleCardColor == inactiveCardColor){
          femaleCardColor = activeCardColor;
          maleCardColor = inactiveCardColor;
        }else{
          femaleCardColor = inactiveCardColor;
        }
      }
    }
  }
*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            //// Ocupa 2/3 del espacio vertical flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(icon:FontAwesomeIcons.mars ,label: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                                          },
                    colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus, label:"FEMALE" ,),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
      /*      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),*/
    );
  }
}





