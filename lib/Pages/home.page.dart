import 'package:app1/Pages/column.page.dart';
import 'package:app1/Pages/container.page.dart';
import 'package:app1/Pages/data.page.dart';
import 'package:app1/Pages/elevatedbutton.page.dart';
import 'package:app1/Pages/increment.page.dart';
import 'package:app1/Pages/increment_number_with_bloc.page.dart';
import 'package:app1/Pages/row.page.dart';
import 'package:app1/Pages/text.page.dart';
import 'package:app1/Pages/texteditingcontroller.page.dart';
import 'package:app1/Pages/textformfield.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text("Flutter Demo"),
        centerTitle: true,
      ),
      body: Padding(
        padding:const  EdgeInsets.only(left:100,right:100),
        child: ListView(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const ContainerPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("1.) Container")),
                ),
              ),const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const ColumnPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("2.) Column")),
                ),
              ),const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const RowPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("3.) Row")),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const TextPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("4.) Text")),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const DataPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("5.) My Data")),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const IncrementPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("6.) Increment")),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const TextFormFieldPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("7.) TextFormField")),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const ElevatedButtonPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("8.) ElevatedButton")),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const TextEditingControllerPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("9.) TextEditingController")),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> const IncrementNumberWithBlocPage())));},
                child: const Card(
                  color: Color.fromARGB(255, 140, 205, 238),
                  child: Padding(padding:EdgeInsets.all(16) ,child: Text("10.) Increment with Bloc")),
                ),
              )
        
        
            ],
          ),
        ]),
      ),
    );
  }
}