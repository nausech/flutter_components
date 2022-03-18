import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10) ,
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://elvortex.com/wp-content/uploads/2019/06/Rick-and-morty-season-4.jpg', 
            titleImage: 'Rick and Morty sesson 4',),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2021/06/rick-morty-2381623.jpg',
            titleImage: 'Rick and morty seasson 1',
            ),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_1440x810/public/media/image/2021/07/rick-morty-5x03-2396073.jpg?itok=N7mRFmGD'),
        ],
      ),
    );
  }
}

