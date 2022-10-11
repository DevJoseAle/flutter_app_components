import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: const CircleAvatar(
              maxRadius: 20,
              backgroundImage: AssetImage('assets/IMG1.jpg'),
              backgroundColor: Colors.teal,
              )
            ),
        ],
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: const [
            CircleAvatar(
              maxRadius: 150,
              backgroundImage: NetworkImage('https://laboratoriosniam.com/wp-content/uploads/2018/07/michael-dam-258165-unsplash_WEB2.jpg'),
            ),
             Text('AvatarScreen'),
           ],
         ),
      ),
    );
  }
}