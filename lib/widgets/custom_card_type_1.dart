
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.add_chart_rounded, color: AppTheme.primary),
            title: Text('Hi world'),
            subtitle: Text('Culpa consequat consequat aliquip ullamco occaecat exercitation excepteur id fugiat qui amet velit. Magna ex eu amet magna excepteur eu. Aute aute ullamco in nostrud consectetur laboris eu excepteur reprehenderit et fugiat nulla occaecat. Adipisicing occaecat nulla occaecat sunt.'),
          ), 
          Padding(
            padding: const EdgeInsets.only(right:5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok'),
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel')
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}