import 'package:climate_hackerz/view/auth/identification_verification/id_verify.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_fonts.dart';

class LoanScreen extends StatefulWidget {
  LoanScreen({Key? key}) : super(key: key);

  @override
  State<LoanScreen> createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen>with SingleTickerProviderStateMixin {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 18,
                        ),SizedBox(width: 4,),
                        Icon(
                          Icons.filter_alt,
                          size: 18,
                        )
                      ],
                    ),
                  ],
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
                        child: Text('Buy',
                            textAlign: TextAlign.center,
                        )
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: Text('Sell',
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
                    children: [IdentityVerification(), IdentityVerification()],
                    controller: _tabController,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
