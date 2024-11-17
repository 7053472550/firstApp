import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/fetch_number.dart';

void main(List<String>args){
  runApp(const  ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildButton(context),
      ),
    );
  }
}

Widget _buildButton(BuildContext contex){
  return Scaffold(
    body: Center(
      child: ElevatedButton(onPressed: (){

      }, child: Text("Stream Provider")),
    ),
  );
}







