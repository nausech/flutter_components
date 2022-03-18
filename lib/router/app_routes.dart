
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';




class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions =  <MenuOption>[    
    //MenuOption(route: 'home', icon: Icons.home, name: 'Home screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_rounded, name: 'List View tipo 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'List View tipo 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.notification_add, name: 'Alerta', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'Card', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.person, name: 'Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_fill_outlined, name: 'Animated Container ', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Text Inputs ', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video_outlined, name: 'Slider && Checks ', screen: const SliderScreen()),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const  HomeScreen() });
    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: ( BuildContext context ) => option.screen
      });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes ={
  //   'home'     : (BuildContext context) => const HomeScreen(), 
  //   'listview1':(BuildContext context) => const Listview1Screen(), 
  //   'listview2':(BuildContext context) => const Listview2Screen(), 
  //   'alert'    : (BuildContext context) => const AlertScreen(), 
  //   'card'     : (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }

}