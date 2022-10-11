import 'package:flutter/material.dart';
import 'package:fl_components/models/menu_options.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/pages/listview1_screen.dart';
import 'package:fl_components/routes/route_app.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text('Componentes App')
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),

          trailing:Icon(menuOptions[index].icon, color: AppTheme.primary),
          
          onTap: (){
             
            // final route = MaterialPageRoute(builder: (context) => AppRoutes.menuOptions());
            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);

          },
        ),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: AppRoutes.menuOptions.length
        )
      );
  }
}