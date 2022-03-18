import 'package:fl_components/widgets/custom_card_type_1.dart';
import 'package:fl_components/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camilo Narvaez'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('CN'),
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child : Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: const [ 
              CircleAvatar(
                backgroundImage: NetworkImage('https://es.web.img3.acsta.net/pictures/18/10/31/17/34/2348073.jpg'),
                maxRadius: 100,
              ),
              CustomCardType1()
            ],
          ),
        )
      ),
    );
  }
}