import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Theme/colors.dart';

class TravelRecord extends StatefulWidget {
  @override
  _TravelRecordState createState() => _TravelRecordState();
}

class _TravelRecordState extends State<TravelRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: purpleColor,
          title: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text("Historial de viajes"),
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

              for(int i=0; i<4; i++)...[
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
                              child: Text("ID: ###", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: whiteColor),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0, top: 4.0, bottom: 4.0),
                              child: Text("Taxi Cancelado", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: whiteColor),),
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
                                Text("Desde", style: TextStyle(fontSize: 13, color: Colors.black45),),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width *0.9,
                                    child:
                                    Text("Dirección de origen",
                                      style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                              ],
                            ),

                            Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.black26,
                            ),
                            Row(
                              children: [
                                Text("Hasta", style: TextStyle(fontSize: 13, color: Colors.black45),),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width *0.9,
                                    child:
                                    Text("Dirección de destino",
                                      style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                              ],
                            ),

                            Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.black26,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Hora de solicitud", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context).size.width *0.45,
                                            child:
                                            Text("Hora",
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
                                        Text("Hora de finalización", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context).size.width *0.45,
                                            child:
                                            Text("Hora",
                                              style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.black26,
                            ),
                            Row(
                              children: [
                                Text("Duración del viaje", style: TextStyle(fontSize: 13, color: Colors.black45),),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width *0.9,
                                    child:
                                    Text("12 minutos, 50 segundos",
                                      style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                              ],
                            ),

                            Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.black26,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Costo del viaje", style: TextStyle(fontSize: 13, color: Colors.black45),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context).size.width *0.45,
                                            child:
                                            Text("\$ 5.96",
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
                                            Text("100 kilómetros",
                                              style: TextStyle(fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.black26,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    color: purpleColor,
                                    onPressed: (){},
                                    child: Text("Reportar queja", style: TextStyle(color: whiteColor),)
                                ),
                              ],
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
              ]

            ],
          ),
        ),
      ),

    );
  }
}
