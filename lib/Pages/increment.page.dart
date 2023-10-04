import 'package:flutter/material.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}


class _IncrementPageState extends State<IncrementPage> {

       late int _counter;

  @override
  void initState() {
    print('kapoy');
    _counter = 0;
    super.initState();
  }

  @override
  void dispose() {
    print("char lang");
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print('nako');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Increment Page"),
        centerTitle: true,
      ),
      body: Center(
        child: (Text(_counter.toString(),style:const TextStyle(fontSize: 40)))
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          print("basta");
          _counter++;
        });
      },
      child: const Text("+", style: TextStyle(fontSize: 30),),),
      
    );
  }
}