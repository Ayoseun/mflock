import 'package:climate_hackerz/constants/app_images.dart';
import 'package:climate_hackerz/view/trade/widget/stock_content.dart';
import 'package:flutter/material.dart';

import '../../component/button.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../dashboard/widget/list_content.dart';

class Trade extends StatefulWidget {
  Trade({Key? key}) : super(key: key);

  @override
  State<Trade> createState() => _TradeState();
}

class _TradeState extends State<Trade> with SingleTickerProviderStateMixin {
  // We need a TabController to control the selected tab programmatically
  late final _tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    final _getSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Pallete.kBackgroundColor,
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '',
                  style: AppFonts.body1,
                ),
                Text(
                  'Live Stock',
                  style: AppFonts.body1.copyWith(fontSize: 16,color: Pallete.kBlack),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    AppImages.bell,
                    width: 20,
                  ),
                ),
              ],
            ),
           
           
           
           
           
           
           
           
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: _getSize.height * 0.8,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return StockItem(
                      lead: 'Buy',
                    );
                  }),
            ),
          ],
        )),
      ),
    );
  }
}
