import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const ['God of war', 'Mario Bross', 'Final fantasy', 'Halo 2', 'Tom Rider', 'Resident Evil',
  'Supersmash', 'Metal Slug', 'Call of duty', 'Guitar Hero', 'Megaman', 'Street Figther', 'Horizon zero', 'World war two'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('LIstView Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
              title:  Text(options[i]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,),
              onTap: (){
                final game = options[i];
              }
            ),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length)
    );
  }
}