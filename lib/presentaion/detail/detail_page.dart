import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CachedNetworkImage(
        imageUrl: "",
        errorWidget: (context, url, error) =>
            Assets.pngDefaultContentImage.toImage(

            ),
      ),
    );
  }
}
