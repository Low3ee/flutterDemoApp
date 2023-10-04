import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Page"),
        centerTitle: true
      ),
      body: Container(
        decoration:const BoxDecoration(color: Colors.amber),
        height: 300,
        width: 300,
        child:const Text("This is a container")
      ),
    );
  }
}