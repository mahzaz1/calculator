import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, this.color = (Colors.black26), required this.text, required this.onPress}) : super(key: key);
    final Color color;
    final String text;
    final VoidCallback onPress;


  @override
  Widget build(BuildContext context) {


    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),

          ),
          child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),)),
        ),
      ),
    );
  }
}



