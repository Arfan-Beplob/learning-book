import 'package:flutter/material.dart';
class CustomTextFromField extends StatefulWidget {
  String helperText;
  String hintText;
  String labelText;
  TextEditingController controller;
  bool obsecureVal;

   CustomTextFromField({Key? key,
   required this.hintText,
     required this.helperText,
     required this.labelText,
     required this.controller,
     required this.obsecureVal
   }) : super(key: key);

  @override
  State<CustomTextFromField> createState() => _CustomTextFromFieldState();
}

class _CustomTextFromFieldState extends State<CustomTextFromField> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 28.0,
          right: 28.0
      ),
      child: TextFormField(

        validator: (value){
          if(value!.isEmpty) {
            return "This Field is can`t empty";
          }
          if(widget.labelText=="Email"){

          }
        },
        cursorColor: Colors.tealAccent,
        controller: widget.controller,
        obscureText: widget.obsecureVal,
        decoration:InputDecoration(

          focusColor: Colors.blue,
            labelText:widget.labelText,
            hintText: widget.hintText,
            helperText: widget.helperText,
            helperStyle: TextStyle(
              fontSize:18
            ),
            labelStyle: TextStyle(
              color: Colors.teal,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
            ),

        ) ,
      ),
    );
  }
}

