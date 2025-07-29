import 'package:MyProvider/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPagState extends StatefulWidget {
  const SecondPagState({super.key});

  @override
  State<SecondPagState> createState() => __SecondPagStateState();
}

class __SecondPagStateState extends State<SecondPagState> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, myProvider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              myProvider.decrement();
            },
            child: Icon(Icons.remove),
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
                    Navigator.pop(context);
                  },
                  child: Text('Previous Page'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
