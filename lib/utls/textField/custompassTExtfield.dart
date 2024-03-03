import 'package:carrito/utls/colors.dart';
import 'package:flutter/material.dart';

class customTextFormFieldpass extends StatelessWidget {
   customTextFormFieldpass({
    super.key,
    required this.passWordController,  this. icon,
  });
 IconData ?icon;
  final TextEditingController passWordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:passWordController ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'password must not be empty';
        }else if(value .length<8){
          return "Password must be more than 8 characters";
        }
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: 'enter your password',
          labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(icon,color: textColor,),
      ),
      onFieldSubmitted: (value) {
      },
    );
  }
}
