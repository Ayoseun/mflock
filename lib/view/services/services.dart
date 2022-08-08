import 'package:climate_hackerz/constants/app_colors.dart';
import 'package:climate_hackerz/constants/app_fonts.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(child: Column(children: [
            
      
            
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Farm Location: ',style: AppFonts.body1,),
                    Text('Zimbabwe',style: AppFonts.body1.copyWith(color: Pallete.kBlack,fontWeight: FontWeight.w600),),
                  ],
                ),
                  Text('23C',style: AppFonts.body1.copyWith(color: Pallete.kText,fontSize: 16,fontWeight: FontWeight.w600),),
                 
                ],), Image.asset('assets/images/icons/cloud.png',width: 45,color: Pallete.kBlack,)
              ],
            )
          ],)),
        ),
      ),
    );
  }
}