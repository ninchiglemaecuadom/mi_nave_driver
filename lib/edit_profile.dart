import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_nave_driver/mainScreen.dart';

import 'Theme/colors.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

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
          title: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text("Edite su perfil"),
          ),
          iconTheme: IconThemeData(
            color: whiteColor,
          ),
          automaticallyImplyLeading: true ,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height *0.85,
        child: ListView(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: purpleColor,
                  border: Border.all(
                    width: 3,
                    color: purpleColor,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              // abrir camara tocando la imagen y no el icono
                              Image.network(
                                "https://res.cloudinary.com/dpxbhmezb/image/upload/w_auto,f_auto,q_auto:eco/user-avatar.png",
                                width: 125,
                                height: 125,
                              ),
                              // IconButton(
                              //   icon: Icon(Icons.camera_alt),
                              //   color: whiteColor,
                              //   onPressed: ()=>{},
                              //   // onPressed: ()=> _pickImage(ImageSource.camera),
                              // ),
                            ],
                          ),
                          // Image.asset('assets/userIcon.png',),
                        )),
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0,),
                  Text("Teléfono", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Teléfono',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("E-mail", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'E-mail',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("Nombre", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Nombre',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("Apellido", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Apellido',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("Color del vehículo", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Color del vehículo',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("Placa", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Placa',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("Año", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Año',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("Cédula", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Cédula',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Text("Dirección de domicilio", style: TextStyle(color: grayColor),),
                  TextField(
                    // controller: barCodeController,
                    // maxLength: 13,
                    // maxLengthEnforced: true,
                    enabled: true,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                      hintText: 'Dirección de domicilio',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                ],
              ),

            ),



            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: RaisedButton(
                color: yellowColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: (){
                  // aqui ENVIAR EL FORMULARIO Y ABRIR PANTALLA PRINCIPAL DE LA APP

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                      ModalRoute.withName("/MainScreen"));

                },
                child: Text("Guardar", style: TextStyle(color: whiteColor, fontSize: 18),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
