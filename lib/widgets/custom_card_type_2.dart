import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  final String imageUrl;
  final String? titleImage;

  const CustomCardType2({
    Key? key,
    required this.imageUrl, 
    this.titleImage
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 500,
      child: Column(
        children: [

          FadeInImage(
            image:NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration:  const Duration(milliseconds: 500),
          ),
          if(titleImage != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(titleImage!)
            )
        ],
      )
    );
  }
}