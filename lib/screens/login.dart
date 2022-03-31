import 'package:flutter/material.dart';
import 'package:untitled7/helper/custom_button.dart';
import 'package:untitled7/helper/custom_text_from_field.dart';
import 'package:untitled7/screens/home_page.dart';
import 'package:untitled7/screens/singup.dart';
class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInState();
}
final GlobalKey<FormState> _formkey= GlobalKey();
TextEditingController _emailcontroller=TextEditingController();
TextEditingController _passcontroller=TextEditingController();
class _LogInState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 70,),
              Container(
                  child: Text("Welcome Back",
                  style: TextStyle(
                    fontSize: 30
                  ),)),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Image.asset("assets/loginanimation.png")),
              CustomTextFromField(
                labelText: 'Email',
                hintText: 'Ente Your Email',
                helperText: 'Must be enter valid email',
                obsecureVal: false,
                controller: _passcontroller
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFromField(
                controller: _emailcontroller,
                obsecureVal: true,
                labelText: 'Password',
                hintText: 'Ente Your Password',
                helperText: 'Don`t Shere Your Password Anyone',
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  if (_formkey.currentState!.validate());
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>HomePage()),);
                },
                child: CustomButton(
                  hight: 40,
                  wight: 300,
                  btnText:"LOG IN",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have any account ? ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context)=>SingUpPage()),);
                      },
                    child: Text("Sing Up",
                      style: TextStyle(
                        fontSize: 15,
                      color: Colors.blue
                      )
                    ),
                  )],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



