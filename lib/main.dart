import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/counter_cubit.dart';
import 'package:flutter_cubit/cubit/image_cubit.dart';
import 'package:flutter_cubit/screens/counter_page.dart';
import 'package:flutter_cubit/screens/imagepicker_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Multi Page App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => CounterCubit(),
                      child: const CounterPage(),
                    ),
                  ),
                );
              },
              child: const Text('Go to Counter Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => ImageCubit(),
                      child: const ImagePickerPage(),
                    ),
                  ),
                );
              },
              child: const Text('Go to Image Picker Page'),
            ),
          ],
        ),
      ),
    );
  }
}



