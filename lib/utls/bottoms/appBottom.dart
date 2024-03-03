import 'package:carrito/utls/colors.dart';
import 'package:flutter/material.dart';

class appButtom extends StatelessWidget {
  appButtom({
    super.key,
    required this.width,
    required this.text,
    required this.function,
  });
  double width;
  String text;
  VoidCallback  function;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      decoration: BoxDecoration(
          color: baasiccolor,

          borderRadius: BorderRadius.circular(20)
      ),
      child: MaterialButton(onPressed: function,
        child: Text(text,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: 20
        ),),),
    );
  }
}
