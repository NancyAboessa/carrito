import 'package:carrito/utls/bottoms/appBottom.dart';
import 'package:flutter/material.dart';
import '../../utls/colors.dart';
import 'customs/customCard.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundCColor,
      appBar: AppBar(backgroundColor: backgroundCColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
          radius: 48, // Image radius
          backgroundImage: AssetImage('assets/imeges/7303ff183600515.65429033421db.jpg'),
              ),
        ),
        title: Row(
          children: [
           Icon(Icons.location_on,color: textColor,),
            SizedBox(width: 5,),
            Text('Cairo, Egypt',style: TextStyle(color: textColor),)
          ],
        ),
        actions: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white)
              ),
              child: Icon(Icons.list,color: textColor,size: 35,)),
        ],
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
              children: [
                SizedBox(height: 20,),
                Text('Hello,Nancy',
                  style: TextStyle(color: textColor,fontSize: 25),),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10),
                  child: Text('Choose Your ideal Car',style: TextStyle(color: Colors.grey[600]),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 35),
                  child: appButtom(width: 150, text: 'Brand', function: (){}),
                ),
                SizedBox(height: 25,),

              ],
            )],
          ),
          Container(
            height: 70,
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return  appButtom(width: 80, text: 'tesla', function: (){});
              },
            ),
          ),
          Container(
            height: 400,
            child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.all(15),
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCard(),
              );

            }),
          )
        ],
      ),

    );
  }
}
