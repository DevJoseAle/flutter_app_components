import 'package:flutter/material.dart';

class AlertModal extends StatelessWidget {
   
  const AlertModal({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('Desde AlertModal Widget'),
      ),
    );
  }
}