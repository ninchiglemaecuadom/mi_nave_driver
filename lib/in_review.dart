import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_nave_driver/mainScreen.dart';

import 'Theme/colors.dart';
import 'login.dart';

class InReview extends StatefulWidget {
  @override
  _InReviewState createState() => _InReviewState();
}

class _InReviewState extends State<InReview> {

  @override
  void initState(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: purpleColor,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          automaticallyImplyLeading: false ,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height *0.9,
        width: MediaQuery.of(context).size.width ,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/logoHorizontal.jpeg",
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Estamos revisando sus documentos",
                textAlign: TextAlign.center,
                style: TextStyle(color: purpleColor, fontWeight: FontWeight.bold, fontSize: 24,),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70.0),
              child: RaisedButton(
                color: yellowColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: (){

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                      ModalRoute.withName("/MainScreen"));

                },
                child: Text("Continuar, este boton no va", style: TextStyle(color: whiteColor),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70.0),
              child: RaisedButton(
                color: yellowColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: (){

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                      ModalRoute.withName("/Login"));

                },
                child: Text("Cerrar Sesión", style: TextStyle(color: whiteColor),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
