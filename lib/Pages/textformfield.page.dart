import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  const TextFormFieldPage({super.key});

  @override
  State<TextFormFieldPage> createState() => _TextFormFieldPageState();
}

class _TextFormFieldPageState extends State<TextFormFieldPage> {
   bool _obscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFormField"),
        centerTitle: true,
      ),
      body:  Padding(
          padding:const EdgeInsets.only(left: 100, right: 100),
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    print("test");
                  }
                },
                decoration: InputDecoration(
                    prefixIcon: const Padding(padding: EdgeInsets.only(right: 25,left: 20) ,child:  Icon(Icons.person_rounded)),
                    fillColor: const Color.fromARGB(255, 249, 248, 248),
                    filled: true,
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    hintText: 'Username'),
              ),
               const SizedBox(height: 10),
              TextFormField(
                obscureText: _obscured,
                validator: (value) {
                  if (value!.isEmpty) {
                    print("test");
                  }
                },
                decoration: InputDecoration(
          
                    prefixIcon: const Padding(padding: EdgeInsets.only(right: 25, left: 20) ,child:  Icon(Icons.password_sharp)),
                    fillColor: const Color.fromARGB(255, 249, 248, 248),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    hintText: 'Password',
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                         switch (_obscured) {
                           case true:
                             _obscured = false;
                            
                           case false:
                            _obscured = true;
                         }
                        });
                      },
                      child: Padding(padding: const EdgeInsets.only(right: 25),child: Icon(_obscured ? Icons.visibility : Icons.visibility_off)),
                    )),                
              )
            ],
          ),
        ),
      );
  }
}
