import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'example_0.dart';
import 'example_1.dart';
import 'example_2.dart';
import 'example_3.dart';
import 'example_di.dart';
import 'injector.dart';

void main() async {
  await configureDependencies(environment: Environment.dev);
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Notifier Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goto(context, page: const Example0()),
              child: const Text('Example 0'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => _goto(context, page: const Example1()),
              child: const Text('Example 1'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => _goto(context, page: const Example2()),
              child: const Text('Example 2'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => _goto(context, page: const Example3()),
              child: const Text('Example 3'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => _goto(context, page: const ExampleDI()),
              child: const Text('Example DI'),
            ),
          ],
        ),
      ),
    );
  }

  void _goto(BuildContext context, {required Widget page}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
