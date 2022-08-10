import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {

  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeType({Key key,@required this.coffeeType,this.isSelected,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(coffeeType,style: TextStyle(
          color:isSelected? Colors.orange:Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),
      ),
    );
  }
}
