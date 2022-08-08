

import 'package:climate_hackerz/view/sell/sell.dart';
import 'package:flutter/cupertino.dart';

import '../view/auth/identification_verification/id_verify.dart';
import '../view/auth/login/login.dart';
import '../view/auth/personal/personal_details.dart';
import '../view/auth/signup/signup.dart';
import '../view/auth/verify_signup/verify_signup.dart';
import '../view/navbar/navbar.dart';


class AppRoutes {
  // ONBOARDING
  static const onboarding = '/onboarding';

  // navbar
  static const navBar = '/navbar';

  // AUTH

  //login
  static const login = '/login';
  static const newPassword = '/newPassword';
  static const passwordResetOTP = '/passwordResetOTP';
  //OTP
  static const otpscreen = '/otpscreen';
  //SIGNUP
  static const signupscreen = '/signup';
  static const forgotPassword = '/forgotPassword';
  //changepasswordotp
  static const changePasswordOTP = '/changePasswordOTP';
  static const manageNotification = '/manageNotification';
//verifyotp
  static const verifySignUpOTP = '/verifySignUpOTP';

  //USER

  //PERSONALDETAILS
  static const personaldetails = '/personaldetails';
  //POLICY
  static const policy = '/policy';
  //CHANGEPASSWORD
  static const changePassword = '/changePassword';

  //WALLET
  static const purchase = '/purchase';
  //OFFERDETAILS
  static const offerdetails = '/offerdetails';
  //WITHDRAW
  static const withdraw = '/withdraw';
  //FUND
  static const fundwallet = '/fundwallet';
  //CHECKOUT
  static const checkOut = '/checkout';
  static const social = '/social';
  static const faq = '/faq';
  static const review = '/review';
  static const about = '/about';
  static const termsOfUse = '/termsOfUse';
  static const termsOfPurchase = '/termsOfPurchase';
  static const privacy = '/privacy';
  static const chat = '/chat';
    static const setup = '/setup';
     static const id = '/id';
     static const createWallet = '/createWallet';
  static const trackComplaint = '/trackCompliant';
  static const reopenComplaint = '/reopenCompliant';
  static const makeComplaint = '/makeCompliant';
  static const complaints = '/Compliants';
  static const helpLines = '/helpLines';
  static const writeReview = '/writeReview';
  static const sell = '/sell';
  static const addbeneficiaries = '/addbeneficiaries';
//PROFILE
  static const security = '/security';
  static const refund = '/refund';
  static const editProfile = '/editProfile';

  static Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      // ONBOARDING
      

      //AUTH routes
     //personaldetails
      AppRoutes.personaldetails: (context) => PersonalData(),
      //signup
      AppRoutes.signupscreen: (context) => SignUp(),
      //login route
      AppRoutes.login: (context) => LoginScreen(),
      AppRoutes.verifySignUpOTP: (context) => VerifySignUp(),
     AppRoutes.id: (context) => IdentityVerification(),

      //navbar route
      AppRoutes.navBar: (context) => NavBar(),

     // SCREEN routes
AppRoutes.sell: (context) => SellStocks(),

   
    };
  }
}
