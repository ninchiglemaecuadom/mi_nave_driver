import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mi_nave_driver/register.dart';

import 'Theme/colors.dart';


class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  bool validNumber=false;

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,

        child: ListView(

          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            // SizedBox(height: MediaQuery.of(context).size.height*0.01,),

            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 80.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ingresa tu número", style: TextStyle(color: purpleColor, fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                      if(value == true){
                        setState(() {
                          validNumber = true;
                        });
                      }else{
                        setState(() {
                          validNumber = false;
                        });
                      }
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.onUserInteraction,
                    // autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: false,
                    keyboardType:
                    TextInputType.numberWithOptions(signed: true, decimal: true),
                    inputBorder: OutlineInputBorder(),
                    // onSaved: (PhoneNumber number) {
                    //   print('On Saved: $number');
                    // },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: purpleColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: validNumber == true ? (){
                          // aqui chequear si va a ingresar o a registrarse

                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Register()),
                              ModalRoute.withName("/Register"));
                        } : null,
                        child: Container(
                            width: MediaQuery.of(context).size.width *0.5,
                            height: MediaQuery.of(context).size.height *0.06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Siguiente", style: TextStyle(color: whiteColor, fontSize: 18),),
                              ],
                            )),
                      )
                    ],
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  Text("o puedes registrarte con tus redes sociales.", style: TextStyle(color: purpleColor, fontSize: 14, fontWeight: FontWeight.bold),),

                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: blueColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: (){
                          // aqui chequear si va a ingresar o a registrarse

                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => Login()),
                          //     ModalRoute.withName("/Login"));
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width *0.5,
                            height: MediaQuery.of(context).size.height *0.06,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.facebook,
                                  color: whiteColor,
                                  size: 25.0,
                                  semanticLabel: 'Text to announce in accessibility modes',
                                ),
                                SizedBox(width: 15.0,),
                                Text("Registrate con Facebook", style: TextStyle(color: whiteColor, fontSize: 12),),
                              ],
                            )),
                      )
                    ],
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: redColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: (){
                          // aqui chequear si va a ingresar o a registrarse

                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => Login()),
                          //     ModalRoute.withName("/Login"));
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height *0.06,
                            width: MediaQuery.of(context).size.width *0.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://www.coworker.com/mag/wp-content/uploads/2018/03/google_what_is_coworking.png",
                                  width: 25,
                                ),
                                SizedBox(width: 15.0,),
                                Text("Registrate con Google", style: TextStyle(color: whiteColor, fontSize: 12),),
                              ],
                            )),
                      )
                    ],
                  ),

                  SizedBox(height: 80.0,),
                  Text("Al momento de registrarte aceptas nuestros términos y condiciones.", style: TextStyle(color: purpleColor, fontSize: 9, fontWeight: FontWeight.bold),),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
