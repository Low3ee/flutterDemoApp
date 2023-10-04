import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Page"),
        centerTitle: true,
      ),
      body:const Center(
        child:  Column(children: [
          SizedBox(height: 100),
          Text("Text 1"),
          SizedBox(height: 20),
          Text("Text 2", style: TextStyle(fontSize: 20,color: Colors.deepPurple, fontStyle: FontStyle.italic)),
          SizedBox(height: 20),
          Text("Text 3", style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 233, 8, 42), fontWeight: FontWeight.bold))
        ],),
      ),
    );
  }
}