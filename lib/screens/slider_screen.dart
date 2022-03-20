import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnble = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              inactiveColor: Colors.amber,
              value: _sliderValue, 
              onChanged: _sliderEnble 
              ? (value) {
                _sliderValue = value;
                setState(() { });
              }
              : null
            ),
            // Checkbox(
            //   value: _sliderEnble, 
            //   onChanged: (value){
            //     _sliderEnble = value ?? true;
            //     setState(() {
                  
            //     });
            //   }
            // ),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const  Text('Hablitar slider'),
              value: _sliderEnble, 
              onChanged: (value) => setState(() {
                _sliderEnble = value ?? true;
              })
            ),
            // Switch(
            //   value: _sliderEnble, 
            //   onChanged: (value) => setState(() {
            //     _sliderEnble = value;
            //   })
            // ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const  Text('Hablitar slider'),
              value: _sliderEnble, 
              onChanged: (value) => setState(() {
                _sliderEnble = value;
              })
            ),
            Image(
              image: const NetworkImage('https://es.web.img3.acsta.net/pictures/18/10/31/17/34/2348073.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue
            )
          ],
      
        ),
      )
    );
  }
}