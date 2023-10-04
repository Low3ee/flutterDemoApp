import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Data Page"),
        centerTitle: true,
      ),
      body: Column(
          children: [
            Row(children: [
               const SizedBox(width: 100,  child:Center(child: Text("First Name: "))),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.amberAccent),
                  child: const Center(child: Text("Louie")),
                )
            ],),
            const SizedBox(height: 20),
            Row(children: [
               const SizedBox(width: 100,  child:Center(child: Text("Last Name: "))),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Color.fromARGB(255, 28, 182, 28)),
                  child:  const Center(child: Text("Abad")),
                )
            ],),
            const SizedBox(height: 20),
            Row(children: [
             const SizedBox(width: 100,  child:Center(child: Text("Email Address: "))),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Color.fromARGB(255, 138, 18, 145)),
                  child: const Center(child: Text("louieabad000@gmail.com")),
                )
            ],)
            ,
            const SizedBox(height: 20),
            Row(children: [
              const SizedBox(width: 100,  child:Center(child: Text("Gender: "))),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Color.fromARGB(255, 13, 57, 76)),
                  child:  const Center(child: Text("Male")),
                )
            ],)
            ,
            const SizedBox(height: 20),
            Row(children: [
              const SizedBox(width: 100,  child: Center(child: Text("Age: "))),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Color.fromARGB(255, 150, 20, 20)),
                  child: const Center(child: Text("20")),
                )
            ],)
          ]),
      );
  }
}