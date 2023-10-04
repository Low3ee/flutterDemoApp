import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatelessWidget {
  const ElevatedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevated Button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
                onPressed: () {
                  print("register button pressed");
                },
                child: const Text("Register")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print("Log in Button Pressed");
                },
                style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(150, 60)),
                    backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                child: const Text("Log In"))
          ],
        ),
      ),
    );
  }
}
