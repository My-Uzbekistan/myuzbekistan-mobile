import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(

      actions: [
        IconButton(onPressed: (){
          context.finance.pushAddCardPage();
        }, icon: Icon(Icons.add))
      ],
    ), body: Container(

      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(height: 12,),
        padding: EdgeInsets.all( 16),
        itemBuilder: (context, index) {
          return CreditCard(data: CreditCardItem());
        }

      ),
    ));
  }
}
