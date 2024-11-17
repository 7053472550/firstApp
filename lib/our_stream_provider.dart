import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/fetch_number.dart';
import 'package:untitled/main.dart';

final numbersProvider= StreamProvider<int>((ref)=>fetchNumber());
class NumberScreen extends ConsumerWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   var asyncValue = ref.watch(numbersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number"),
      ),
      body: asyncValue.when(
          data: (data){
   return Center(child: Text(data.toString()),);
      }, error: (error, stackTrace){
       return Center(child: Text(error.toString()),);
      }, loading:(){
        return Center(child: CircularProgressIndicator(),);
      } )
    );
  }
}
