import 'package:flutter/material.dart';

class TextEditingControllerPage extends StatefulWidget {
  const TextEditingControllerPage({super.key});

  @override
  State<TextEditingControllerPage> createState() =>
      _TextEditingControllerPageState();
}

class _TextEditingControllerPageState extends State<TextEditingControllerPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  String _outputUsername = "";
  String _outputPassword = "";

  final _formKey = GlobalKey<FormState>();

  bool _obscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("TextEditingController"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: Column(children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  TextFormField(
                    controller: username,
                    validator: (value) {
                  if (value!.isEmpty) {
                    return "Can't be empty";
                  }
                  return null;
                },
                    decoration: InputDecoration(
                        prefixIcon: const Padding(
                            padding: EdgeInsets.only(right: 25, left: 20),
                            child: Icon(Icons.person_rounded)),
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
                    controller: password,
                    obscureText: _obscured,
                    validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  return null;
                },
                    decoration: InputDecoration(
                        prefixIcon: const Padding(
                            padding: EdgeInsets.only(right: 25, left: 20),
                            child: Icon(Icons.password_sharp)),
                        fillColor: const Color.fromARGB(255, 249, 248, 248),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hintText: 'Password',
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              switch (_obscured) {
                                case true:
                                  _obscured = false;

                                case false:
                                  _obscured = true;
                              }
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Icon(_obscured
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        )),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                         var isValid = _formKey.currentState!.validate();
                        if (!isValid) {
                          return;
                        }

                        _formKey.currentState!.save();
                        setState(() {
                          _outputPassword = password.text;
                          _outputUsername = username.text;
                        });
                      },
                      child: const Text("Submit")),
                      const SizedBox(height: 15),
                      ElevatedButton(
                      onPressed: () {
                        setState(() {
                          password.clear();
                          username.clear();
                          _outputPassword = "";
                          _outputUsername = "";
                        });
                      },
                      child: const Text("Clear"))
                ],
              ),
            ),
            Row(
              children: [
                const Text("Username: "),
                const SizedBox(width: 20),
                Text(_outputUsername)
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Text("Password: "),
                const SizedBox(width: 20),
                Text(_outputPassword)
              ],
            )
          ]),
        ));
  }
}
