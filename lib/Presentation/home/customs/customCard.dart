import 'package:flutter/material.dart';

import '../../../utls/colors.dart';

class CustomCard extends StatelessWidget {
   CustomCard({super.key});
  final borderRadius = BorderRadius.circular(20); // Image border
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 200,
          padding: EdgeInsets.all(3), // Border width
          decoration: BoxDecoration(color: Colors.black12,
              borderRadius: borderRadius,
          ),
          child: ClipRRect(
            borderRadius: borderRadius,
            child: SizedBox.fromSize(
              size: Size.fromRadius(150), // Image radius
              child: Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Image.asset('assets/imeges/365e5c187765621.Y3JvcCwxMzgwLDEwODAsMjcwLDA (1).png',
                    fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text('CarModel',style: TextStyle(color:textColor,fontSize: 25,fontWeight: FontWeight.w300),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150,left: 5),
          child: Text('Price:800.000',
            style: TextStyle(color: textColor,fontSize: 25,fontWeight: FontWeight.w300),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150,left: 270),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)),
            child: MaterialButton(onPressed: (){},
              color: baasiccolor,
              child: Text('Details',style: TextStyle(color: textColor),),
            ),
          ),
        )
      ],
    );
  }
}
