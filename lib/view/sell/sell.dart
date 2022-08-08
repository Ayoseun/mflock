import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/button.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_images.dart';
import '../../constants/app_route.dart';
import '../../constants/resources.dart';
import 'tab_ontent/history.dart';
import 'tab_ontent/inquiry.dart';
import 'tab_ontent/update.dart';

class SellStocks extends StatefulWidget {
  SellStocks({Key? key}) : super(key: key);

  @override
  State<SellStocks> createState() => _SellStocksState();
}

class _SellStocksState extends State<SellStocks> with SingleTickerProviderStateMixin {
  // We need a TabController to control the selected tab programmatically
  late final _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
     final _getSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Pallete.kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    GestureDetector(
                      onTap:()=> Navigator.of(context).pop(),
                      child: Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(255, 0, 0, 0),size: 18,)),
                    Text('Sell LiveStock',style: AppFonts.body1.copyWith(color: Color.fromARGB(255, 0, 0, 0),fontSize: 14),),
                    

                       
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Image.asset(
                                  AppImages.bell,
                                  width: 20,
                       ),
                             ),
                   
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                     decoration:  BoxDecoration(
                      border: Border.all(width: 0.5,color: Pallete.khint.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Pallete.khint.withOpacity(0.1),
                            blurRadius:
                                7.0, // has the effect of softening the shadow
                            spreadRadius:
                                0.5, // has the effect of extending the shadow
                            offset: const Offset(
                              0.0, // horizontal, move right 10
                              5.0, // vertical, move down 10
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.search,color: Pallete.kLightText,size: 24,),
                          Text('Search',style: AppFonts.body1.copyWith(color: Color.fromARGB(255, 202, 205, 205)),)
                        ],
                      ),
                    )
                  ),
                ),


   Container(
                color: Pallete.kBackgroundColor,
                child:TabBar(
               labelStyle: AppFonts.body1.copyWith(fontSize: 14),
                controller: _tabController,
              physics: BouncingScrollPhysics(),
              unselectedLabelColor: Colors.grey[400],
              indicatorColor: Pallete.kPrimaryColor,
              labelColor: Pallete.kPrimaryColor,
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: Text('Update',
                            textAlign: TextAlign.center,
                        )
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: Text('Inquiry',
                            textAlign: TextAlign.center,
                          ),
                      ),
                    ), Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: Text('History',
                            textAlign: TextAlign.center,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0)),
                      color: Colors.white),
                  height: _getSize.height,
                  child: TabBarView(
                    children: [Update(), Inquiry(),History()],
                    controller: _tabController,
                  ),
                ),
              ),
           


















              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
