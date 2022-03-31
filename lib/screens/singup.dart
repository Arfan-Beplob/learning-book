import 'package:flutter/material.dart';
import 'package:untitled7/helper/custom_button.dart';
import 'package:untitled7/helper/custom_text_from_field.dart';
import 'package:untitled7/screens/login.dart';
class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}
final GlobalKey<FormState> _formkey= GlobalKey();
TextEditingController _emailcontroller=TextEditingController();
TextEditingController _passcontroller=TextEditingController();
TextEditingController confpasscontroller=TextEditingController();
class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),

              Container(
                height: 300,
                child:Image.asset("assets/singup.png") ,
              ),

              SizedBox(
                height: 40,
              ),

              CustomTextFromField(
                  hintText: "Enter Your Email",
                  helperText: "Enter Valid Email",
                  labelText: "Email",
                  controller: _emailcontroller,
                  obsecureVal: false
              ),

              SizedBox(
                height: 15,
              ),

              CustomTextFromField(
                  hintText: "Enter Your Password",
                  helperText: "Enter New Password",
                  labelText: "Password",
                  controller: _passcontroller,
                  obsecureVal: true
              ),

              SizedBox(
                height: 15,
              ),
              CustomTextFromField(
                  hintText: "Enter Your Conform Password",
                  helperText: "Re-Enter Password",
                  labelText: "Confirm Password",
                  controller:confpasscontroller,
                  obsecureVal: true
              ),

              SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: (){
                  // if (_formkey.currentState!.validate())
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context)=>LogInPage()
                    ),);
                },
                child: CustomButton(
                    hight: 40,
                    wight: 300,
                    btnText: "SING UP"
                ),
              ),

              SizedBox(
                height: 2,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Alrady have a account ? ",
                  style: TextStyle(
                    fontSize: 18
                  ),),
                  InkWell(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context)=>LogInPage()),);
                      },
                      child: Text("LogIN",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
