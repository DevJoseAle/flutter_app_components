import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Column(
        children:[
         const ListTile(
            leading: Icon(Icons.access_time_filled_sharp, color: AppTheme.primary),
            title: Text('Card1'),
            subtitle: Text('Soy un subtitulo en el que puede ir cualquier cosa'),
          ),
         
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            TextButton(
              onPressed: () {}, 
              child: const Text('Ok'),),
            TextButton(
              onPressed: () {}, 
              child: const Text('Cancel'),),
              ],
            ),
          )
        ],
      )
    );
  }
}
