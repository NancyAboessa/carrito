import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({
    super.key,
     this.emailController,
    required this.text,
     this.icon,
  });

  final TextEditingController ?emailController;
  String text;
  IconData ?icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:emailController ,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email must not be empty';
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(icon  ,
          color: Colors.white,),
      ),
      onFieldSubmitted: (value) {
      },
    );
  }
}
