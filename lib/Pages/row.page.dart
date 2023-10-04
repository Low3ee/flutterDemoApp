import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
        centerTitle: true,
      ),
      body: Row(
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
      )
    );
  }
}