import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Theme/colors.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              "https://res.cloudinary.com/dpxbhmezb/image/upload/w_auto,f_auto,q_auto:eco/user-avatar.png",
              width: 45,
              height: 45,
            ),
            SizedBox(width: 5,),
            Text('Nombre Apellido', style: TextStyle(fontSize: 18), ),
          ],
        ),
        backgroundColor: purpleColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 20, right: 20),
            child: Container(
              height: MediaQuery.of(context).size.height*0.78,
              child: ListView(
                children: [

                  // aqui estan los mensajes de ejemplo para cada caso
                  // este elemento debe construirse en uno solo, como esta dentro del for que hay debajo
                  // y validar segun los parametros que llegan que estilo darle al elemento

                  // mensaje externo al usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: whiteColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text("Lorem ipsum es el texto que se usa habitualmente en diseño gráfico"
                                    " en demostraciones de tipografías o de borradores de diseño para probar el "
                                    "diseño visual antes de insertar el texto final. ", style: TextStyle(color: purpleColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                children: [
                                  Text("12/12/2021 - 16:30",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  // mensaje del usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es desde este usuario usar el  MainAxisAlignment.end
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: purpleColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text("Lorem ipsum es el texto que se usa habitualmente en diseño gráfico"
                                    " en demostraciones de tipografías o de borradores de diseño para probar el "
                                    "diseño visual antes de insertar el texto final. ", style: TextStyle(color: whiteColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("12/12/2021 - 16:32",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),



                  // mensajes de relleno para el chat
                  // mensaje externo al usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: whiteColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text("Lorem ipsum es el texto que se usa habitualmente en diseño gráfico"
                                    " en demostraciones de tipografías o de borradores de diseño para probar el "
                                    "diseño visual antes de insertar el texto final. ", style: TextStyle(color: purpleColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                children: [
                                  Text("12/12/2021 - 16:30",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  // mensaje del usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es desde este usuario usar el  MainAxisAlignment.end
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: purpleColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text("Lorem ipsum es el texto que se usa habitualmente en diseño gráfico"
                                    " en diseño para probar el "
                                    "diseño visual antes de insertar el texto final. ", style: TextStyle(color: whiteColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("12/12/2021 - 16:32",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  // mensaje externo al usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: whiteColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text("Lorem ipsum es el texto que se usa habitualmente en diseño gráfico"
                                    " en demostraciones de tipografías o de borradores de diseño para probar el "
                                    "diseño visual antes de insertar el texto final. ", style: TextStyle(color: purpleColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                children: [
                                  Text("12/12/2021 - 16:30",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  // mensaje del usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es desde este usuario usar el  MainAxisAlignment.end
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: purpleColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text("Lorem ipsum es el texto que se usa habitualmente en diseño gráfico"
                                    " en demostraciones de tipografías o de borradores de diseño para probar el "
                                    "diseño visual antes de insertar el texto final. ", style: TextStyle(color: whiteColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("12/12/2021 - 16:32",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  // mensaje externo al usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: whiteColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text(" en demostraciones de tipografías o de borradores de diseño para probar el "
                                    "diseño visual antes de insertar el texto final. ", style: TextStyle(color: purpleColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                children: [
                                  Text("12/12/2021 - 16:30",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  // mensaje del usuario
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es desde este usuario usar el  MainAxisAlignment.end
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: purpleColor,
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0, right: 8.0),
                                child: Text("Lorem ipsum es el texto que se usa habitualmente en diseño gráfico"
                                  , style: TextStyle(color: whiteColor, fontSize: 14),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // hora del mensaje y vistos
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // si el mensaje es externo usar el  MainAxisAlignment.start
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 14.0, right: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("12/12/2021 - 16:32",
                                    style: TextStyle(color: Colors.black38, fontSize: 12),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                  Icon(Icons.check_circle, size: 18.0, color: Colors.purple,),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),


                  // ejemplo de como hacerlo en un solo elemento intercambiando los estilos con una validacion
                  // toca incluir tambien los vistos y la hora con una validacion similar
                  /*
                  Container(
                    width: MediaQuery.of(context).size.width*0.78,
                    child: Row(
                      // la validacion seria como a continuacion en este comentario
                      mensajeUsuario == true ?
                      mainAxisAlignment: MainAxisAlignment.end,  // si es del usuario, o si esa variable que no esta declarada se llena en true
                      :
                        mainAxisAlignment: MainAxisAlignment.start, // si es false, es que el mensaje viene de afuera, se muestra a la izquierda
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                             mensajeUsuario == true ?
                            color: purpleColor
                            :
                            color: whiteColor,

                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("mensaje numero 2", style: TextStyle(color: whiteColor, fontSize: 14),),
                          ),
                        ),
                      ],
                    ),
                  ),
*/

                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.78,
                  child:
                  TextField(
                    // controller: messageController,
                    enabled: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Escribe un mensaje',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    ),
                  ),

                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.15,
                height: MediaQuery.of(context).size.height*0.07,
                child: FlatButton(onPressed: (){},
                  color: purpleColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.send, color: whiteColor, size: 25,),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
