import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mi_nave_driver/edit_profile.dart';
import 'package:mi_nave_driver/ganancias.dart';
import 'package:mi_nave_driver/travel_record.dart';
import 'package:mi_nave_driver/ver_oferta.dart';

import 'Theme/colors.dart';


class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  bool status = false;

  @override
  void initState(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            status == true
                ?
            Container(
            width: 100.0,
            height: 40.0,
        // width: MediaQuery.of(context).size.width*0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.green,
          border: Border.all(
            width: 1,
            color: Colors.green,
            style: BorderStyle.solid,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Disponible", style: TextStyle(fontSize: 16),),
            ),
          ],
        ),
        )
            :
            Container(
            width: 100.0,
            height: 40.0,
        // width: MediaQuery.of(context).size.width*0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.red,
          border: Border.all(
            width: 1,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Ocupado", style: TextStyle(fontSize: 16),),
            ),
          ],
        ),
        ),
            SizedBox(width: 10,),
            FlutterSwitch(
              width: 100.0,
              height: 40.0,
              valueFontSize: 25.0,
              toggleSize: 45.0,
              value: status,
              borderRadius: 30.0,
              padding: 8.0,
              showOnOff: true,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ],
        ),
        backgroundColor: purpleColor,
      ),
      drawer: MenuLateral(),
      body:
      status == true ?
      ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.89,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView(
                children: [

                  for(int i = 0 ; i < 3 ; i++)...[
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
                                child: Text("Solicitud", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: whiteColor),),
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

                              Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.85,
                                    child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Oferta",
                                              style: TextStyle(fontSize: 12, color: Colors.black38, fontWeight: FontWeight.bold),),
                                            Text("\$ 3.42",
                                              style: TextStyle(fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            FlatButton(
                                                color: purpleColor,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20)),
                                                onPressed: (){
                                                  // pasar la solicitud a la pantalla de ver solicitud

                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                    return VerOferta();
                                                  }));

                                                },
                                                child: Text("Ver", style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor, fontSize: 16),)
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                    SizedBox(height: 10,),
                  ]


                ],

              ),
            ),
          ),

        ],
      )
        :
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
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

        ],
      ),
    );

  }
}




class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            currentAccountPicture: Image.network(
              "https://res.cloudinary.com/dpxbhmezb/image/upload/w_auto,f_auto,q_auto:eco/user-avatar.png",
              width: 60,
              height: 60,
            ),
            accountName: Text("NOMBRE APELLIDO"),
            accountEmail: Text("+593 554 545 045"),
            decoration: BoxDecoration(
              color: purpleColor,

            ),
          ),
          Ink(
            child:
            new ListTile(
              title: Row(
                children: [
                  Icon(Icons.star, size: 26.0, color: yellowColor,),
                  SizedBox(width: 6,),
                  Text("Ganancias",style: TextStyle(fontSize: 15, color: blackColor, fontWeight: FontWeight.bold),),
                ],
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Ganancias();
                }));
              },
            ),
          ),
          new ListTile(
            title: Row(
              children: [
                Icon(Icons.view_list_outlined, size: 26.0, color: Colors.green,),
                SizedBox(width: 6,),
                Text("Historial de viajes",style: TextStyle(fontSize: 15, color: blackColor, fontWeight: FontWeight.bold),),
              ],
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return TravelRecord();
              }));
            },
          ),
          new ListTile(
            title: Row(
              children: [
                Icon(Icons.person, size: 26.0, color: purpleColor,),
                SizedBox(width: 6,),
                Text("Editar perfil",style: TextStyle(fontSize: 15, color: blackColor, fontWeight: FontWeight.bold),),
              ],
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return EditProfile();
              }));
            },
          ),
          new ListTile(
            title: Row(
              children: [
                Icon(Icons.help_outline, size: 26.0, color: Colors.orange,),
                SizedBox(width: 6,),
                Text("Sobre nosotros",style: TextStyle(fontSize: 15, color: blackColor, fontWeight: FontWeight.bold),),
              ],
            ),
            onTap: (){},
          ),
          new ListTile(
            title: Row(
              children: [
                Icon(Icons.logout, size: 26.0, color: Colors.red,),
                SizedBox(width: 6,),
                Text("Salir",style: TextStyle(fontSize: 15, color: blackColor, fontWeight: FontWeight.bold),),
              ],
            ),
            onTap: (){
              // para cerrar la sesion completa borra lo que hayas almacenado en shared preferences
              // Navigator.pushAndRemoveUntil(
              //     context,
              //     MaterialPageRoute(builder: (context) => Login()),
              //     ModalRoute.withName("/Prelogin"));
            },
          ),

        ],
      ) ,
    );
  }
}