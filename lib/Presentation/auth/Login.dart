import 'package:carrito/Presentation/auth/register.dart';
import 'package:carrito/utls/bottoms/appBottom.dart';
import 'package:carrito/utls/colors.dart';
import 'package:carrito/utls/textField/custompassTExtfield.dart';
import 'package:carrito/utls/textField/customtextfielf.dart';
import 'package:flutter/material.dart';

class Login  extends StatelessWidget {
   Login ({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundCColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('LOGIN',
              style: TextStyle(fontSize: 45,fontWeight: FontWeight.w400,color: Colors.white),
            ),
            const SizedBox(height: 20,),
            customTextField(emailController: emailController,text: 'enter your email',icon: Icons.email,),
            const SizedBox(height: 20,),
            customTextFormFieldpass(icon: Icons.lock,passWordController: passWordController),
            const SizedBox(height: 20,),
            appButtom(width: double.infinity,text: 'LOGIN',function: (){},),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Register() ));

            }, child: Text(
              'Do not have an account, register Now',
              style: TextStyle(color: textColor),
            ))
          ],
        ),
    );
  }
}



