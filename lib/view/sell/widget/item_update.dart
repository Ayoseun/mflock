import 'package:climate_hackerz/constants/app_colors.dart';
import 'package:climate_hackerz/constants/app_images.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_fonts.dart';

class Items_update extends StatelessWidget {
  const Items_update({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _getSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
           
            height: 100,
            decoration: const BoxDecoration(
                color: Color(0xFFFAFAFA),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  child: Image.asset(
                    'assets/images/images/pig.jpg',
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,top:8,bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Goat',
                            style: AppFonts.body1.copyWith(
                                color: Pallete.kText,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),SizedBox(width: _getSize.width*0.33,),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(4)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'active',
                                style: AppFonts.body1.copyWith(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 10),
                              ),
                            ),
                          )
                        ],
                      ),


                      SizedBox(height: _getSize.height*0.029,),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Quantity',
                                  style: AppFonts.body1.copyWith(
                                      color:
                                          Color.fromARGB(255, 197, 198, 198))),
                                        const  SizedBox(height: 4,),
                              Text(
                                '200',
                                style: AppFonts.body1.copyWith(
                                    color: Pallete.kBlack, fontSize: 14),
                              )
                            ],
                          ),SizedBox(width: _getSize.width*0.32,),
                          Image.asset(
                            'assets/images/icons/chat.png',
                           
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
