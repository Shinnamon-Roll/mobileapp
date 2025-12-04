import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main () {
  runApp(MyHomePage());

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
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
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
            'Hello Flutter',
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
              // show asset image if available; otherwise ignore error
              Image.asset(
                'assets/images/IMG_20251117_205840.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stack) => const SizedBox.shrink(),
              ),
              const SizedBox(height: 24),
              const Text(
                'กดปุ่ม เพื่อค่า ตัวเลข',
                style: TextStyle(color: Colors.red, fontSize: 22),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                '$_counter',
                style: const TextStyle(fontSize: 48),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}