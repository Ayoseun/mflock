import 'package:climate_hackerz/component/button.dart';
import 'package:climate_hackerz/constants/app_colors.dart';
import 'package:climate_hackerz/constants/app_fonts.dart';
import 'package:climate_hackerz/constants/app_route.dart';

import 'package:flutter/material.dart';

class StockItem extends StatelessWidget {
   String lead='';
StockItem({Key? key,required this.lead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _getSize=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,bottom: 8, right: 16),
      child: Container(
       width: 315,
        decoration: BoxDecoration(
            color: Pallete.kGravishColor.withOpacity(0.04),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ClipRRect( borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                    //topRight: Radius.circular(10)),
                child: Image.asset('assets/images/images/cows.jpg',width: 160,fit: BoxFit.contain,)),
             SizedBox(width: 8,),
              Padding(
                padding: const EdgeInsets.only(top:4.0,bottom:4,right: 8),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                       width:  _getSize.height*0.165,
                      child: Text(
                        'Open grazing may be affecting the lifespan of your flock...',
                       // maxLines: 2,
                        textAlign: TextAlign.start,
                        style: AppFonts.body1.copyWith(fontSize: 12,color: Pallete.kBlack,fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   
                      children: [
                        Row(
                          children: [
                          
                            Text(
                              '3hrs ago',
                              style:
                                  AppFonts.bodylight.copyWith(color: Pallete.kLightText,fontSize: 10),
                            ),
                          ],
                        ),SizedBox(width: 12,),
                        Row(
                          children: [
                             Icon(Icons.remove_red_eye,color: Pallete.kGravishColor,size: 12,),
                           
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
