import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  final options = const['Megaman', 'Superman', 'Acquaman', 'Batman', 'Strange'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View  2 Screen'),
      ),
      body: ListView(
        children:[
  
        ...options.map((e) => ListTile(
          trailing: const Icon(Icons.arrow_right),
          title: Text(e)
        ) ).toList()
        ],
      )
    );
  }
}  