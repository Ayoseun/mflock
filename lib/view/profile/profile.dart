import 'package:climate_hackerz/view/profile/widget/row.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_images.dart';
import '../../constants/app_route.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final _getSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF2FFF3),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: _getSize.height * 0.8,
              color: Color(0xFFF2FFF3),
              child: Column(
                children: [
                  SizedBox(height:16 ,),
                 
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://picsum.photos/200',
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chizzy',
                            style: AppFonts.body1.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Joined: 15-10-2022',
                            style: AppFonts.body1,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color:
                                          Color.fromARGB(255, 108, 173, 252)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0, horizontal: 16),
                                    child: Row(
                                      children: [
                                        Text(
                                          'ID',
                                          style: AppFonts.body1
                                              .copyWith(color: Colors.white),
                                        ),
                                        Icon(Icons.check,
                                            size: 12, color: Colors.white)
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color:
                                          Color.fromARGB(255, 234, 234, 234)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0, horizontal: 16),
                                    child: Row(
                                      children: [
                                        Text('Address',
                                            style: AppFonts.body1.copyWith(
                                                color: Pallete.kText)),
                                        Icon(Icons.cancel_outlined,
                                            size: 12, color: Pallete.kText)
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height:_getSize.height * 0.1 ,),
                  SizedBox(height:_getSize.height * 0.05 ,),
                    Column(
                children: [
                  
                  const ResuseableRow(
                    text: 'settings',
                    img: AppImages.settings,
                    onPressed: AppRoutes.navBar,
                  ),

                  const ResuseableRow(
                    text: 'Manage Notifications',
                    img: AppImages.bell,
                    onPressed: AppRoutes.navBar,
                  ),
                  const ResuseableRow(
                    text: 'TermsandConditions',
                    img: AppImages.file,
                    onPressed: AppRoutes.navBar,
                  ),
                  const ResuseableRow(
                    text: 'Signout',
                    img: AppImages.exit,
                    onPressed: AppRoutes.navBar,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
             
                ],
              ),
            ),
          ),
          Container(
            height: _getSize.height * 0.085,
            color: Color.fromARGB(255, 243, 251, 244),
          )
        ]),
      ),
    );
  }
}
