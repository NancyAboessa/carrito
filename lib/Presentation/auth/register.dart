import 'package:carrito/Presentation/auth/Login.dart';
import 'package:carrito/utls/textField/customtextfielf.dart';
import 'package:flutter/material.dart';

import '../../utls/bottoms/appBottom.dart';
import '../../utls/colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundCColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Register',
            style: TextStyle(fontSize: 45,fontWeight: FontWeight.w400,color: Colors.white),
          ),
          const SizedBox(height: 20,),
          customTextField( icon: Icons.person,text: 'enter your name',),
          const SizedBox(height: 20,),
          customTextField(icon: Icons.email_sharp ,text: 'enter your Email',),
          const SizedBox(height: 20,),
          customTextField(icon: Icons.lock, text: 'enter your PassWord',),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>Login() ));
          },
              child:Text( 'have an account ?! login',
            style: TextStyle(color: textColor),)),
          appButtom(width: double.infinity,
            text: 'Register', function: () {},)
        ],
      ),
    );
  }
}
