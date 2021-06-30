import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_nave_driver/llegue.dart';
import 'package:mi_nave_driver/mainScreen.dart';

import 'Theme/colors.dart';

class Waiting extends StatefulWidget {
  @override
  _WaitingState createState() => _WaitingState();
}

class _WaitingState extends State<Waiting> {
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
              child: Text("Oferta Enviada",
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
                      MaterialPageRoute(builder: (context) => Llegue()),
                      ModalRoute.withName("/Llegue"));

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
                      MaterialPageRoute(builder: (context) => MainScreen()),
                      ModalRoute.withName("/MainScreen"));

                },
                child: Text("Cancelar", style: TextStyle(color: whiteColor),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
