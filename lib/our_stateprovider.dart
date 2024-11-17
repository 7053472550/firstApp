import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider= StateProvider<int>((ref)=>0,);
class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterApp'),
      ),
      body: Consumer(
          builder: (context, ref, child){
        int count= ref.watch(counterStateProvider);
        return Text(
          count.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
        );
      }
      ),
    floatingActionButton: FloatingActionButton(onPressed: (){
      ref.read(counterStateProvider.state).state++;
    }, child: Icon(Icons.add),
    ),
  );
  }
}
