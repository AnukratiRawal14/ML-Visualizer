import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import 'dart:io';

 Future<bool> onBackPressed(BuildContext context){
     return (showDialog(

               context: context,
               barrierDismissible: true,
               useRootNavigator:true,

               builder: (context)=>AlertDialog(

                            backgroundColor: Color(0xFF1F1F1F),

                            content: Text(
                                          'Do you want to exit ? ',
                                           textAlign: TextAlign.center,
                                           style:kWillPopScope,
                                      ),

                            contentPadding: EdgeInsets.only(left:5,top:25,right:5,bottom:20),
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(15.0))),

                            actions: [
                                         FlatButton(child:Text('No'),
                                                              highlightColor: kHightlightColor,
                                                              onPressed:(){
                                                                      Navigator.pop(context,false);
                                                              }
                                         ),

                                         FlatButton(child:Text('Yes'),
                                                   highlightColor: kHightlightColor,
                                                   onPressed:(){
                                                          exit(0);
                                                   }
                                         ),
                            ],

               ),
     ));
 }