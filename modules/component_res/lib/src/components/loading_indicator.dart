import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double size;

  const LoadingIndicator({super.key, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoActivityIndicator()
        : SizedBox(
            height: size,
            width: size,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: context.appColors.brand,
              strokeCap: StrokeCap.butt,
              padding: EdgeInsets.zero,
            ),
          );
  }
}
