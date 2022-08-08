import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../component/input.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_fonts.dart';
import '../../../constants/app_route.dart';


class VerifySignUp extends StatefulWidget {
  VerifySignUp({Key? key}) : super(key: key);

  @override
  State<VerifySignUp> createState() => _VerifySignUpState();
}

class _VerifySignUpState extends State<VerifySignUp> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: Duration(seconds: 2),
      ),
    );
  }

  String otp = 'ayo*****omon@gmail.com';
  @override
  Widget build(BuildContext context) {
    final _getSize=MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
     
        child: Scaffold(
           body: SafeArea(
             child: SingleChildScrollView(
               child: Container(
                 height: MediaQuery.of(context).size.height,
                 child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Padding(
                 padding: const EdgeInsets.symmetric(horizontal:16.0,vertical:8),
                 child: Column(mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                 'Step 1 of 3',
                 style: AppFonts.body1,
              ),
              SizedBox(height: 4,),
              Text(
                 'OTP Verification',
                 style: AppFonts.body1.copyWith(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ],
                 ),
               ),   SizedBox(height: 8,),
               Container(
            width: _getSize.width,
            height: 0.5,
            color: Pallete.kSecondaryColor,
               ),   
               SizedBox(height: 8,),
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                              
                               Text('Enter the otp that was sent to',
                                   textAlign: TextAlign.center,
                                   style: const TextStyle(
                                     color: Pallete.kText,
                                   )),
                               SizedBox(
                                 height: 8,
                               ),
                               Text(otp.toString(),
                                   textAlign: TextAlign.center,
                                   style: const TextStyle(
                                     color: Pallete.kPrimaryColor,
                                   )),
          
                               //custome spannable widget that accepts navigation route and string
                               CustomTextSpan(Pallete.kSecondaryColor, AppRoutes.login,
                                   "Not your email address?  ", 'Change Email', '')
                             ],
                           ),
                             SizedBox(height: 16,),
                         
                              Container(
                               height: MediaQuery.of(context).size.height*0.4,
                               child: ListView(
                                 children: <Widget>[
                                   Form(
                                     key: formKey,
                                     child: Padding(
                                         padding: const EdgeInsets.symmetric(
                                             vertical: 8.0, horizontal: 30),
                                         child: PinCodeTextField(
                                           appContext: context,
                                           pastedTextStyle: TextStyle(
                                             color: Pallete.whiteColor,
                                             fontWeight: FontWeight.bold,
                                           ),
                                           //number of otp cells
                                           length: 5,
                                           obscureText: true,
                                           obscuringCharacter: '*',
                         
                                           blinkWhenObscuring: true,
                                           animationType: AnimationType.fade,
                                           validator: (v) {
                                             if (v!.length < 3) {
                                               return "paste or enter code";
                                             } else {
                                               return null;
                                             }
                                           },
                                           pinTheme: PinTheme(
                                             shape: PinCodeFieldShape.box,
                                             inactiveFillColor:Colors.white ,
                                             borderRadius: BorderRadius.circular(5),
                                             fieldHeight: 50,
                                             fieldWidth: 50,
                                             activeColor: Pallete.kPrimaryColor,
                                             disabledColor: Pallete.kPrimaryColor,
                                             selectedFillColor:Colors.white ,
                                             borderWidth: 1,
                                             
                                             activeFillColor: Colors.white,
                                           ),
                                           cursorColor: Pallete.kPrimaryColor,
                                           
                                           animationDuration: Duration(milliseconds: 300),
                                           enableActiveFill: true,
                                           errorAnimationController: errorController,
                                           controller: textEditingController,
                                           keyboardType: TextInputType.number,
                                           boxShadows: [
                                             BoxShadow(
                                               offset: Offset(0, 1),
                                               color: Colors.black12,
                                               blurRadius: 10,
                                             )
                                           ],
                                           onCompleted: (v) {
                                             print("Completed");
                                           },
                                           // onTap: () {
                                           //   print("Pressed");
                                           // },
                                           onChanged: (value) {
                                             print(value);
                                             setState(() {
                                               currentText = value;
                                             });
                                           },
                                           beforeTextPaste: (text) {
                                             print("Allowing to paste $text");
                                             //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                             //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                             return true;
                                           },
                                         )),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                     child: Text(
                                       hasError
                                           ? "*Please fill up all the cells properly"
                                           : "",
                                       style: TextStyle(
                                           color: Pallete.kPrimaryColor,
                                           fontSize: 12,
                                           fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           
                         
                           //this is a static text
                           Column(
                             children: [
                               //Proceed button
                               Container(
                                 width: MediaQuery.of(context).size.width,
                                 child: OutlinedButton(
                                     child: Text('Proceed'.toUpperCase()),
                                     style: OutlinedButton.styleFrom(
                                       padding: EdgeInsets.symmetric(vertical: 16),
                                       side: BorderSide(
                                           color: Pallete.kPrimaryColor, width: 1),
                                       shape: const RoundedRectangleBorder(
                                           borderRadius:
                                               BorderRadius.all(Radius.circular(10))),
                                       primary: Pallete.whiteColor,
                                       backgroundColor: Pallete.kPrimaryColor,
                                       textStyle: const TextStyle(
                                           color: Pallete.kPrimaryColor,
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold),
                                     ),
                                     onPressed: () {
                                       formKey.currentState!.validate();
                                       // conditions for validating
                                       if (currentText.length != 6 ||
                                           currentText != "123456") {
                                         errorController!.add(ErrorAnimationType
                                             .shake); // Triggering error shake animation
                                         setState(() => hasError = true);
                                       } else {
                                         setState(
                                           () {
                                             hasError = false;
                                             snackBar("OTP Verified!!");
                                           },
                                         );
                                       }
                                       Navigator.of(context)
                                       .pushNamed(AppRoutes.personaldetails);
                                     }),
                               ),
                               SizedBox(
                                 height: 16,
                               ),
                               const Text('Did not get an OTP?',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                     color: Pallete.kText,
                                     fontSize: 16,
                                   )), //sizebox for margin between widget
          
                               //resend button wrapped in a container to manage it's width
                               Container(
                                 width: MediaQuery.of(context).size.width,
                                 padding: EdgeInsets.symmetric(vertical: 16.0),
                                 child: OutlinedButton(
                                     child: Text('Resend'.toUpperCase()),
                                     style: OutlinedButton.styleFrom(
                                       shape: const RoundedRectangleBorder(
                                           borderRadius:
                                               BorderRadius.all(Radius.circular(10))),
                                       padding: EdgeInsets.symmetric(vertical: 16),
                                       primary: Color.fromARGB(255, 0, 0, 0),
                                       backgroundColor: Colors.transparent,
                                       textStyle: TextStyle(
                                           color: Colors.black,
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold),
                                     ),
                                     onPressed: () {
                                         Navigator.of(context)
                                       .pushNamed(AppRoutes.personaldetails);
                                     }),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
      ),
    );
  }
}
