import 'package:MyProvider/provider/my_provider.dart';
import 'package:MyProvider/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<MyProvider>(context).value.toString(),
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPagState()),
                );
              },
              child: Text('Next Pages'),
            ),
          ],
        ),
      ),
    );
  }
}
