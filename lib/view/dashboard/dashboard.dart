import 'package:carousel_slider/carousel_slider.dart';
import 'package:climate_hackerz/constants/app_colors.dart';
import 'package:climate_hackerz/constants/app_fonts.dart';
import 'package:climate_hackerz/constants/app_images.dart';
import 'package:climate_hackerz/view/dashboard/widget/list_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../model/dashboard.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CarouselController carouselController = CarouselController();
  int _sliderIndex = 0;

  final _sliderItemLength = DashItems.loadItems().length;
  final _sliderItem = DashItems.loadItems();
  // final Size = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    final _sliderItemLength = DashItems.loadItems().length;
    final _sliderItem = DashItems.loadItems();
    final Size = MediaQuery.of(context).size;

    List<Widget> items = [];
    for (var item in _sliderItem) {
      items.add(SingleChildScrollView(
        child: SizedBox(
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10)),
            child: Image.asset(
              item.image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ));
    }

    final _getSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Pallete.kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5,
                            color: Pallete.khint.withOpacity(0.5)),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Pallete.kLightText,
                              size: 24,
                            ),
                            Text(
                              'Search',
                              style: AppFonts.body1.copyWith(
                                  color: Color.fromARGB(255, 202, 205, 205)),
                            )
                          ],
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
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
                        child: Image.asset(
                          AppImages.bell,
                          width: 20,
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:16.0,left: 16,right: 16),
              child: Container(
                height: 250,
                width: Size.width * 0.95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trending',
                      style: AppFonts.body1.copyWith(
                        fontSize: 16,
                        color: Pallete.kBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 185,
                      width: Size.width,
                      child: CarouselSlider(
                        carouselController: carouselController,
                        items: items,
                        //Slider Container properties
                        options: CarouselOptions(
                          reverse: false,
                          autoPlay: true,
                          height: 210,
                          viewportFraction: 1,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _sliderIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 112.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.5,
                                height: 12,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _sliderItemLength,
                                    itemBuilder:
                                        (BuildContext context, int i) {
                                      return Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: _sliderIndex == i
                                                  ? Pallete.kPrimaryColor
                                                  : Color.fromARGB(
                                                      255, 202, 202, 202),
                                            ),
                                            width: _sliderIndex == i ? 30 : 8,
                                          ));
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _getSize.height*0.501,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Farm stories',
                                style: AppFonts.body1.copyWith(color: Pallete.kText),
                              ),
                              Text(
                                'view all',
                                style: AppFonts.body1
                                    .copyWith(color: Pallete.khint, fontSize: 11),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: _getSize.height * 0.165,
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return BuyItem(
                                    lead: 'Buy',
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'From auction',
                                style: AppFonts.body1.copyWith(color: Pallete.kText),
                              ),
                              Text(
                                'view all',
                                style: AppFonts.body1
                                    .copyWith(color: Pallete.khint, fontSize: 11),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: _getSize.height * 0.165,
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return BuyItem(
                                    lead: 'Buy',
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Health Stories',
                                style: AppFonts.body1.copyWith(color: Pallete.kText),
                              ),
                              Text(
                                'view all',
                                style: AppFonts.body1
                                    .copyWith(color: Pallete.khint, fontSize: 11),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: _getSize.height * 0.165,
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return BuyItem(
                                    lead: 'Buy',
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Health Stories',
                                style: AppFonts.body1.copyWith(color: Pallete.kText),
                              ),
                              Text(
                                'view all',
                                style: AppFonts.body1
                                    .copyWith(color: Pallete.khint, fontSize: 11),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: _getSize.height * 0.165,
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return BuyItem(
                                    lead: 'Buy',
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
