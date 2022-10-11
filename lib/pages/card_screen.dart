import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';
import 'package:fl_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardWidget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
         
        children: const  [
          CustomCardType1(),
          SizedBox(height: 10,),

          CustomCardType2(
            imgUrl:'https://img.freepik.com/fotos-premium/playa-arena-mar-azul-claro_45187-32.jpg?w=2000', 
            titleImg:'Playa', 
            subTitleImg: 'playa2',),

          SizedBox(height: 10,),
          CustomCardType2(imgUrl: 'https://content.r9cdn.net/rimg/dimg/78/70/001b704a-city-15939-1629b33a69c.jpg?width=1366&height=768&xhint=1779&yhint=1365&crop=true', subTitleImg: 'playa2'),
          SizedBox(height: 10,),
          CustomCardType2(imgUrl: 'https://a.cdn-hotels.com/gdcs/production120/d238/7f6b6cc5-c655-4dfb-a01b-87c67384ed8e.jpg', subTitleImg: 'playa2'),
          SizedBox(height: 10,),
          CustomCardType2(imgUrl: 'https://www.senatorrivieracancunsparesort.com/wp-content/uploads/2020/01/playa-tortugas-1280x720.jpg', subTitleImg: 'playa2'),
          SizedBox(height: 100,),
          
        ],
      ),
    );
  }
}
