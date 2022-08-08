import 'package:climate_hackerz/component/button.dart';
import 'package:climate_hackerz/constants/app_colors.dart';
import 'package:climate_hackerz/constants/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../auth/login/login.dart';

class LiveStockLoan extends StatefulWidget {
  LiveStockLoan({Key? key}) : super(key: key);

  @override
  State<LiveStockLoan> createState() => _LiveStockLoanState();
}

class _LiveStockLoanState extends State<LiveStockLoan> {
  @override
  Widget build(BuildContext context) {
    final _getSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 18,
                  ),
                  Text(
                    'Live Stock Loan',
                    style: AppFonts.body1.copyWith(fontSize: 14),
                  ),
                  Text(
                    '',
                    style: AppFonts.body1,
                  )
                ],
              ),
              SizedBox(
                height: _getSize.height * 0.2,
              ),
              Column(
                children: [
                  SizedBox(
                      width: _getSize.width * 0.8,
                      child: Text(
                        'Get a livestock loan with MFlock',
                        textAlign: TextAlign.center,
                        style: AppFonts.body1.copyWith(
                            color: Pallete.kText,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: _getSize.width * 0.9,
                    child: Text(
                      'fast, easy, reliable and flexible loan to keep your flocks running',
                      textAlign: TextAlign.center,
                      style: AppFonts.body1.copyWith(color: Color(0xFFF2C5F2D)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _getSize.height * 0.2,
              ),
              SizedBox(
                  width: 200,
                  child: ButtonWithFuction(text: 'Apply Now', onPressed: () {})),
              
               SizedBox(
                height: _getSize.height * 0.05,
              ),
              
              Container(
                height: 200,
                decoration: BoxDecoration(
                  // border: Border.all(width: 0.5,color: Pallete.khint.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Pallete.kLightText.withOpacity(0.1),
                      blurRadius: 7.0, // has the effect of softening the shadow
                      spreadRadius: 0.5, // has the effect of extending the shadow
                      offset: const Offset(
                        0.0, // horizontal, move right 10
                        5.0, // vertical, move down 10
                      ), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Pallete.kText.withOpacity(0.05),
                        border: Border.all(
                            width: 0.5, color: Pallete.khint.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Text('Special offer'),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: _getSize.width * 0.8,
                        child: Text(
                          'Exclusive finance the supply of a wide range of agri-input products like seeds, fertilisers, pesticides, micro nutrients and irrigation equipment.',
                          textAlign: TextAlign.center,
                          textHeightBehavior: TextHeightBehavior(),
                          style: AppFonts.body1
                              .copyWith(color: Pallete.kText, fontSize: 14),
                        ),
                      ),
                    ), SizedBox(
                      height: 8,
                    ),SizedBox(
                      
                        width: 200,
                      child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: OutlinedButton(
                                child: Text(
                                  'Take offer',
                                ),
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                    side: BorderSide(
                                        color:  Pallete.kSecondaryColor.withOpacity(0.2),),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(3))),
                                    primary: Pallete.kText,
                                    textStyle: AppFonts.body1.copyWith(fontSize: 14,fontWeight: FontWeight.w600)),
                                onPressed: () {
                                  //IsFirstTime().once(1);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                }),
                          ),
                    ),
                       
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
