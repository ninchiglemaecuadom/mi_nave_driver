import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mi_nave_driver/waiting.dart';
import 'Theme/colors.dart';
import 'llegue.dart';

class TimeSelect extends StatefulWidget {

  @override
  _TimeSelectState createState() => _TimeSelectState();
}

class _TimeSelectState extends State<TimeSelect> {
  Completer<GoogleMapController> _controller = Completer();


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  var oferta = 3.42;

  @override
  void initState(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicite el servicio deseado'),
        backgroundColor: purpleColor,
      ),
      body:  Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(
                height: MediaQuery.of(context).size.height * 0.41,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: whiteColor,
                  border: Border.all(
                    width: 1,
                    color: purpleColor,
                    // color: whiteColor,
                    style: BorderStyle.solid,
                  ),
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *0.85,
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("Oferta: ",
                                          style: TextStyle(fontSize: 16, color: blackColor, fontWeight: FontWeight.bold),),
                                        SizedBox(width: 2.0,),
                                        Text("\$ "+oferta.toStringAsFixed(2),
                                          style: TextStyle(fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                            color: Colors.black26,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width *0.85,
                                  child:
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Desde",
                                        style: TextStyle(fontSize: 12, color: Colors.black38, fontWeight: FontWeight.bold),),
                                      Text("Dirección origen",
                                        style: TextStyle(fontSize: 16, color: blackColor, fontWeight: FontWeight.bold),),
                                    ],
                                  )),
                            ],
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                            color: Colors.black26,
                          ),

                          Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width *0.85,
                                  child:
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Hasta",
                                        style: TextStyle(fontSize: 12, color: Colors.black38, fontWeight: FontWeight.bold),),
                                      Text("Dirección destino",
                                        style: TextStyle(fontSize: 16, color: blackColor, fontWeight: FontWeight.bold),),
                                    ],
                                  )),
                            ],
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                            color: Colors.black26,
                          ),

                          Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width *0.85,
                                  child:
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Image.network(
                                                "https://res.cloudinary.com/dpxbhmezb/image/upload/w_auto,f_auto,q_auto:eco/user-avatar.png",
                                                width: 50,
                                                height: 50,
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 10,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Nombre Apellido", style: TextStyle(fontSize: 14, color: blackColor, fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.star, size: 16.0, color: yellowColor,),
                                                  Text("4.5", style: TextStyle(fontSize: 14, color: blackColor),),
                                                ],
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Distancia",
                                            style: TextStyle(fontSize: 12, color: Colors.black38, fontWeight: FontWeight.bold),),
                                          Text("900 metros",
                                            style: TextStyle(fontSize: 16, color: blackColor, fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                            color: Colors.black26,
                          ),

                        ],
                      ),
                    ),



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

                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => Llegue()),
                                ModalRoute.withName("/Llegue"));

                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width *0.5,
                              height: MediaQuery.of(context).size.height *0.04,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Aceptar", style: TextStyle(color: whiteColor, fontSize: 18),),
                                ],
                              )),
                        )
                      ],
                    ),

                    SizedBox(height: 10.0,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return Waiting();
                            }));
                            setState(() {
                              // enviar la oferta del conductor
                            });
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            //   return FindingDriver();
                            // }));
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width *0.15,
                              height: MediaQuery.of(context).size.height *0.03,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("3 min", style: TextStyle(color: whiteColor, fontSize: 18),),
                                ],
                              )),
                        ),
                        RaisedButton(
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return Waiting();
                            }));
                            // enviar la oferta del conductor
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            //   return FindingDriver();
                            // }));
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width *0.15,
                              height: MediaQuery.of(context).size.height *0.03,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("6 min", style: TextStyle(color: whiteColor, fontSize: 18),),
                                ],
                              )),
                        ),
                        RaisedButton(
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return Waiting();
                            }));
                            // enviar la oferta del conductor
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            //   return FindingDriver();
                            // }));
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width *0.16,
                              height: MediaQuery.of(context).size.height *0.03,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("10 min", style: TextStyle(color: whiteColor, fontSize: 18),),
                                ],
                              )),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0,),

                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisSize: MainAxisSize.max,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     RaisedButton(
                    //       color: yellowColor,
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(5)),
                    //       onPressed: (){
                    //         // eliminar la solicitud para este conductor
                    //
                    //         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //           return Waiting();
                    //         }));
                    //       },
                    //       child: Container(
                    //           width: MediaQuery.of(context).size.width *0.5,
                    //           height: MediaQuery.of(context).size.height *0.04,
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text("Enviar oferta", style: TextStyle(color: whiteColor, fontSize: 18),),
                    //             ],
                    //           )),
                    //     )
                    //   ],
                    // ),

                  ],
                ),
              ),
            ],
          )

        ],

      ),
    );

  }
}



