import 'dart:math';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Experiment extends StatefulWidget {
  const Experiment({super.key});

  @override
  State<Experiment> createState() => _ExperimentState();
}

class _ExperimentState extends State<Experiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text("item  : ${index}");
        },
        itemCount: 50,
      ),
    );
  }
}

