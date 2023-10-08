

import 'package:controlar_alart/Next_Screen.dart';
import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyState();
}

class _MyState extends State<Myhome> {
  TextEditingController nameControlar= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Controla and Alart dialoge",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: 200,
              height: 40,
              child: TextField(

                controller: nameControlar,
                decoration: InputDecoration(
                  hintText:"Raju",
                  hintStyle: TextStyle(color: Colors.red),

                  floatingLabelStyle:TextStyle(color: Colors.redAccent),
                  labelText: "Name",
                  filled: true,
                  fillColor: Colors.teal,
                  prefixIcon: Icon(Icons.person,color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Next_Sreen(name: nameControlar.text,)),
              );
            }, child: Text("Next"))
          ],
        ),
      ),
    );
  }
}





