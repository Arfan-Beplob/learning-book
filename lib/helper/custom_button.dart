// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  double hight;
  double wight;
   String btnText;
   CustomButton({Key? key,
   required this.hight,
     required this.wight,
     required this.btnText
   }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color: Colors.blueAccent,
        ),
      height: widget.hight,
      width: widget.wight,
      child: Center(
        child: Text(widget.btnText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),

        ),
      ),


    );
  }
}
