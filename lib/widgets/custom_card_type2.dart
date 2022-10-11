import 'dart:ffi';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  final String imgUrl;
  final String? titleImg;
  final String subTitleImg;

  const CustomCardType2({ 
    Key? key, 
    required this.imgUrl, 
    this.titleImg, 
    required this.subTitleImg 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( 
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),

      child: Column(
        children: [
        FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,  
            fadeInDuration: const Duration(milliseconds: 500),
           ),

          if(titleImg !=null)
           Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                 //En caso de que no se pase el title, se mostrara el string
                Text( titleImg ?? 'Img1'),
                Text(' $subTitleImg '),
            ],)
           )
      ] 
      ),
    );
  }
}