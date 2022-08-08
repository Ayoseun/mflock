import 'package:climate_hackerz/view/sell/widget/item_update.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  Update({Key? key}) : super(key: key);

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return 
            Items_update();
        
  
        }
    );
  }
}
