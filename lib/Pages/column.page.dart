import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.blueAccent),
            height: 100,
            width: 100,
            child: const Text("Container 1"),
          ),
          Container(
            decoration: const BoxDecoration(color: Color.fromARGB(255, 187, 21, 21)),
            height: 100,
            width: 100,
            child: const Text("Container 2"),
          ),
          Container(
            decoration: const BoxDecoration(color: Color.fromARGB(255, 74, 175, 16)),
            height: 100,
            width: 100,
            child: const Text("Container 3"),
          )
        ],
      ),
    );
  }
}