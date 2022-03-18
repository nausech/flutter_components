import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const ['God of war', 'Mario Bros', 'Final fantasy', 'Supersmash'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('LIstView Tipo 1'),
      ),
      body: ListView(
        children: [

          ...options.map(
            (e) => ListTile(
              title: Text(e),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              iconColor: AppTheme.primary,
            ),
          ).toList()

          
          
        ]
      ),
    );
  }
}