import 'package:flutter/material.dart';

import 'package:fl_components/pages/screens.dart';
import 'package:fl_components/models/menu_options.dart';


class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
      //TODO Borrar HOME
      MenuOption(route: 'home', name: 'Home Screen', screen:  HomeScreen(), icon: Icons.home),
      MenuOption(route: 'listview1', name: 'Listview 1', screen: const ListView1Screen(), icon: Icons.account_tree_outlined),
      MenuOption(route: 'listview2', name: 'Listview 2', screen: ListView2Screen(), icon: Icons.account_balance_wallet_sharp),
      MenuOption(route: 'card', name: 'Card Screen', screen: CardScreen(), icon: Icons.card_travel),
      MenuOption(route: 'alert', name: 'Alert Screen', screen: AlertScreen(), icon: Icons.warning_amber),
      MenuOption(route: 'avatar', name: 'Avatar Screen', screen: AvatarScreen(), icon: Icons.supervised_user_circle),
      MenuOption(route: 'animated', name: 'Animated Screen', screen: AnimatedScreen(), icon: Icons.keyboard_double_arrow_right_sharp),
      MenuOption(route: 'input', name: 'Input Screen', screen: InputScreen(), icon: Icons.checklist_rtl_outlined),
      MenuOption(route: 'slider', name: 'Slider Screen', screen: SliderScreen(), icon: Icons.sledding),
      MenuOption(route: 'listviewbuilder', name: 'ListviewBuilder Screen', screen: ListviewBuilderScreen(), icon: Icons.list_alt),
  ];

 static Map <String, Widget Function(BuildContext)> getAppRoutes(){

  Map <String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {

      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
      
    }


  return appRoutes;
 }

  // static Map <String, Widget Function(BuildContext)>  routes = {
  //       'homescreen': (BuildContext context) => const HomeScreen(),
  //       'listview1' : (BuildContext context) => const ListView1Screen(),
  //       'listview2' : (BuildContext context) => const ListView2Screen(),
  //       'alert'     : (BuildContext context) => const AlertScreen(),
  //       'card'      : (BuildContext context) => const CardScreen(),
  //     };
  
  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }

} 