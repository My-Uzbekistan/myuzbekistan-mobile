import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String info;

  const InfoWidget({super.key,  this.info=  "Irina is a professional tour guide in Uzbekistan, offering tours in Russian and English. She shares the country's history, culture, and architecture, making every trip engaging and insightful.",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, bottom: 16),
      child: Text(
        info,
        style: CustomTypography.bodyLg,
      ),
    );
  }
}
