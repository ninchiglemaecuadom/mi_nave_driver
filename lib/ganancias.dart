import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Theme/colors.dart';

class Ganancias extends StatefulWidget {
  @override
  _GananciasState createState() => _GananciasState();
}

class _GananciasState extends State<Ganancias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: purpleColor,
          title: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text("Ganancias"),
          ),
          iconTheme: IconThemeData(
            color: whiteColor,
          ),
          automaticallyImplyLeading: true ,
        ),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [

              // elemento para iterar y llenar con datos del viaje,
              // jalando cada item de una lista de viajes

                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteColor,
                    border: Border.all(
                      width: 1,
                      color: purpleColor,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                          color: purpleColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                              child: Text("Hoy", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: whiteColor),),
                            ),

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Ganancias", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context).size.width *0.45,
                                            child:
                                            Text("\$ 25.84",
                                              style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Distancia viajada", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context).size.width *0.45,
                                            child:
                                            Text("24 kilómetros",
                                              style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20.0,),


              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: whiteColor,
                  border: Border.all(
                    width: 1,
                    color: purpleColor,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                        color: purpleColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                            child: Text("Esta semana", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: whiteColor),),
                          ),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Ganancias", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context).size.width *0.45,
                                          child:
                                          Text("\$ 74.55",
                                            style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Distancia viajada", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context).size.width *0.45,
                                          child:
                                          Text("38 kilómetros",
                                            style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.0,),

              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: whiteColor,
                  border: Border.all(
                    width: 1,
                    color: purpleColor,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                        color: purpleColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                            child: Text("Este mes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: whiteColor),),
                          ),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Ganancias", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context).size.width *0.45,
                                          child:
                                          Text("\$ 250.96",
                                            style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Distancia viajada", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context).size.width *0.45,
                                          child:
                                          Text("120 kilómetros",
                                            style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.0,),



            ],
          ),
        ),
      ),

    );
  }
}
