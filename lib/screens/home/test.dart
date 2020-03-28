import 'package:bookit/ui/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController textEditingController = new TextEditingController();

  bool status = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 12),
                child: Center(child: Text('المحادثات',style: TextStyle(fontSize: 18,fontFamily: 'font1'),),),
                height: 60,
                decoration: BoxDecoration(
                    color: offWhite,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color:  darkBlue,
                          blurRadius:45,
                          offset: Offset(0, 4),
                          spreadRadius: -15
                      )
                    ]
                ),
              ),


              buildInput()


            ],
          ),




    );
  }



  Widget buildInput() {
    return Container(
      child: Row(
        children: <Widget>[
          // Button send image
          Container(
              margin:  EdgeInsets.symmetric(horizontal: 1.0),
              child:  IconButton(
                icon:  Icon(Icons.image),
                onPressed: (){},
                color: Colors.blueGrey,
              ),
            ),


         Container(
              margin:  EdgeInsets.symmetric(horizontal: 1.0),
              child:  IconButton(
                icon:  Icon(Icons.face),
                onPressed: (){},
                color: Colors.blueGrey,
              ),
            ),


          // Edit text
           Flexible(
             child: Container(
                child: TextField(
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                  controller: textEditingController,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    hintText: 'اكتب رسالتك هنا ...',
                    hintStyle: TextStyle(color: Colors.blueGrey,fontFamily: 'font1',),
                  ),

                ),
              ),
           ),

          // Button send message
           Container(
              margin:  EdgeInsets.symmetric(horizontal: 8.0),
              child:  IconButton(
                icon:  Icon(Icons.send),
                onPressed: (){},
                color: Colors.blueGrey,
              ),
            ),

        ],
      ),

      height: 50.0,
      decoration: BoxDecoration(
          color: offWhite,
          borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color:  darkBlue,
                blurRadius:45,
                offset: Offset(0, 4),
                spreadRadius: -15
            )
          ]
      ),
    );
  }




}