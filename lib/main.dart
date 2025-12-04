import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 16,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.cyan,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: const Text(
          '10030 Shinnamon',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('7')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('8')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('9')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('/')),
              ],
            ),
            const SizedBox(height: 10),
            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('4')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('5')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('6')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('x')),
              ],
            ),
            const SizedBox(height: 10),
            // Row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('1')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('2')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('3')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('-')),
              ],
            ),
            const SizedBox(height: 10),
            // Row 4
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('C')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('0')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('=')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('+')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}