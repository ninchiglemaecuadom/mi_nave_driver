import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_nave_driver/mainScreen.dart';

import 'Theme/colors.dart';

class PayScreen extends StatefulWidget {
  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {

  var viajePagado;

  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;

  @override
  void initState() {
    viajePagado=false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      viajePagado == false ?
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text(
                      "Confirme que realizó el cobro por sus servicios",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: purpleColor, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ),
            ],
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.network(
                  "http://clipart-library.com/images_k/money-clipart-transparent/money-clipart-transparent-14.png",
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),

          SizedBox(height: 30,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: yellowColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: (){
                  setState(() {
                    viajePagado=true;
                  });
                },
                child: Container(
                    width: MediaQuery.of(context).size.width *0.5,
                    height: MediaQuery.of(context).size.height *0.04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Viaje pagado", style: TextStyle(color: whiteColor, fontSize: 18),),
                      ],
                    )),
              )
            ],
          ),


        ],
      )
          :

      Container(
        color: Colors.black45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: whiteColor,
                    border: Border.all(
                      width: 1,
                      color: whiteColor,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:12.0, bottom: 12.0, left: 12.0, right: 12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child:
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://res.cloudinary.com/dpxbhmezb/image/upload/w_auto,f_auto,q_auto:eco/user-avatar.png",
                                        width: 120,
                                        height: 120,
                                      ),
                                    ],
                                  ),
                                  // Image.asset('assets/userIcon.png',),
                                )),
                          ],
                        ),
                        Text("Nombre Apellido", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),),
                        SizedBox(height: 20.0,),

                        Text("¿Cómo estuvo tu viaje?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: purpleColor),),
                        SizedBox(height: 20.0,),

                        Text("Tus comentarios y calificación son de gran ayuda para una mejor experiencia en el servicio",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: purpleColor,),),
                        SizedBox(height: 20.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new IconButton(icon: new Icon(Icons.star),iconSize: 40,
                              onPressed: ()=>setState((){
                                _myColorOne=Colors.yellow;
                                _myColorTwo=Colors.grey;
                                _myColorThree=Colors.grey;
                                _myColorFour=Colors.grey;
                                _myColorFive=Colors.grey;
                              }),color: _myColorOne,),
                            new IconButton(icon: new Icon(Icons.star),iconSize: 40,
                              onPressed: ()=>setState((){
                                _myColorOne=Colors.yellow;
                                _myColorTwo=Colors.yellow;
                                _myColorThree=Colors.grey;
                                _myColorFour=Colors.grey;
                                _myColorFive=Colors.grey;
                              }),color: _myColorTwo,),
                            new IconButton(icon: new Icon(Icons.star),iconSize: 40, onPressed: ()=>setState((){
                              _myColorOne=Colors.yellow;
                              _myColorTwo=Colors.yellow;
                              _myColorThree=Colors.yellow;
                              _myColorFour=Colors.grey;
                              _myColorFive=Colors.grey;
                            }),color: _myColorThree,),
                            new IconButton(icon: new Icon(Icons.star),iconSize: 40, onPressed: ()=>setState((){
                              _myColorOne=Colors.yellow;
                              _myColorTwo=Colors.yellow;
                              _myColorThree=Colors.yellow;
                              _myColorFour=Colors.yellow;
                              _myColorFive=Colors.grey;
                            }),color: _myColorFour,),
                            new IconButton(icon: new Icon(Icons.star),iconSize: 40, onPressed: ()=>setState((){
                              _myColorOne=Colors.yellow;
                              _myColorTwo=Colors.yellow;
                              _myColorThree=Colors.yellow;
                              _myColorFour=Colors.yellow;
                              _myColorFive=Colors.yellow;
                            }),color: _myColorFive,),
                          ],
                        ),

                        SizedBox(height: 20.0,),

                        TextField(
                          // controller: barCodeController,
                          // maxLength: 13,
                          // maxLengthEnforced: true,
                          enabled: true,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                            hintText: 'Cuéntanos tu experiencia',
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                          ),
                        ),

                        SizedBox(height: 20.0,),

                        Container(
                          // height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.61,
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  FlatButton(
                                      color: yellowColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)),
                                      onPressed: (){

                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(builder: (context) => MainScreen()),
                                            ModalRoute.withName("/MainScreen"));

                                      },
                                      child: Row(
                                        children: [
                                          Text("Calificar", style: TextStyle(color: whiteColor)),
                                        ],
                                      )
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 15.0,),

                      ],
                    ),
                  )
              ),
            ),

          ],
        ),
      ),




    );
  }
}
