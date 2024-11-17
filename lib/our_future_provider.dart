import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/dummy_weather.dart';

final weatherProvider = FutureProvider<String>((ref)=>fetcWeatherReport());

class WetherScreen extends ConsumerWidget{
  const WetherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today Weather'),
      ),
      body: ref.watch(weatherProvider).when(data: (data) {

      }, error: (error, stackTrace) {
        return Text(error.toString());
      }
          , loading: (){
        return const CircularProgressIndicator();
          })
    );
  }
}
