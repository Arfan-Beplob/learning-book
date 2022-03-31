import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome SEO Class",
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),),

      ),
      body: Column(
          children: [

          Container(
            alignment: Alignment.center,
            height: 100,
            width: 400,
            color: Colors.grey,
            child:TextButton(onPressed: (){}, child:Text("Hello"),
            ),
          ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,)
        ],
      )
      );


  }
}
