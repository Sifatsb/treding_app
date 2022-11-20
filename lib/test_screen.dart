// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:freelancing/src/pages/entry/forget_password_page.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:loading_overlay/loading_overlay.dart';
// import 'package:freelancing/services/prefconfig.dart';
// import 'package:freelancing/src/pages/entry/registration_page.dart';
// import 'package:freelancing/src/pages/pages.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:http/http.dart' as http;
// import '../../../styles/styles.dart';
// import 'configure/colors.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final String loginUrl = "$mainUrl/out/api/auth/seller/login";
//   // final String loginUrl = "$mainUrl/andro/api/auth/queen/login";
//   TextEditingController qPhoneController = TextEditingController();
//   TextEditingController qPassController = TextEditingController();
//   String userNumber = '';
//   String password = '';
//   bool isObscure = true;
//
//   bool userIsReg = false;
//   bool isProgress = false;
//
//   void _togglePasswordView() {
//     setState(() {
//       isObscure = !isObscure;
//     });
//   }
//
//   // ProgressDialog pr;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: Get.height,
//         width: Get.width,
//         color: Colors.white,
//         // decoration: backgroundColor,
//         child: SafeArea(
//           child: Center(
//             child: LoadingOverlay(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // SvgPicture.asset("assets/svgs/logo.svg"),
//
//                       Text(
//                         "On The Way - Freelancing",
//                         style: GoogleFonts.poppins(
//                           color: mainColor,
//                           fontSize: 20.sp,
//                           fontStyle: FontStyle.normal,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       SizedBox(
//                         height: kHorizontalPadding,
//                       ),
//                       Image.asset(
//                         "assets/images/frelancing.png",
//                         height: 160.r,
//                         width: 220.w,
//                       ),
//                       SizedBox(
//                         height: kHorizontalPadding,
//                       ),
//                       Container(
//                         // height: 220.h,
//                         // width: 270.w,
//                         width: MediaQuery.of(context).size.width * 0.8,
//
//                         decoration: BoxDecoration(
//                           color: mainColor1,
//                           // color: const Color(0XFFFDF5F8),
//                           borderRadius: BorderRadius.circular(10.r),
//                           border: Border.all(
//                             width: 1,
//                             color: const Color(0xffE9E9E9),
//                           ),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.all(kPadding),
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 TextFormField(
//                                   style:
//                                   const TextStyle(color: primaryFontColor),
//                                   controller: qPhoneController,
//                                   // maxLength: 11,
//                                   decoration: InputDecoration(
//                                     prefixIcon: const Icon(
//                                       Icons.phone_outlined,
//                                       color: mainColor,
//                                     ),
//                                     hintText: "Enter Phone Number",
//                                     hintStyle: GoogleFonts.poppins(
//                                       color: secondaryFontColor,
//                                       fontSize: 13.sp,
//                                       fontStyle: FontStyle.normal,
//                                       // fontWeight: FontWeight.w500,
//                                     ),
//                                     isCollapsed: true,
//                                     fillColor: mainAccentColor,
//                                   ),
//                                   keyboardType:
//                                   const TextInputType.numberWithOptions(
//                                     decimal: true,
//                                     signed: false,
//                                   ),
//                                   inputFormatters: <TextInputFormatter>[
//                                     FilteringTextInputFormatter.digitsOnly,
//                                     LengthLimitingTextInputFormatter(11),
//                                   ],
//                                   validator: (value) {
//                                     if (value!.isEmpty ||
//                                         value.startsWith('01')) {
//                                       return "Please enter currect phone number";
//                                     }
//                                     return null;
//                                   },
//                                 ),
//                                 SizedBox(height: kVerticalPadding / 1.5),
//                                 TextFormField(
//                                   style:
//                                   const TextStyle(color: primaryFontColor),
//                                   controller: qPassController,
//                                   // obscureText: true,
//                                   obscureText: isObscure,
//                                   decoration: InputDecoration(
//                                     prefixIcon: const Icon(
//                                       Icons.lock_outline,
//                                       color: mainColor,
//                                     ),
//                                     suffixIcon: InkWell(
//                                       onTap: _togglePasswordView,
//                                       child: Icon(
//                                         isObscure
//                                             ? Icons.visibility_off_outlined
//                                             : Icons.visibility_outlined,
//                                         color: mainColor,
//                                       ),
//                                     ),
//                                     hintText: "Enter Password",
//                                     hintStyle: GoogleFonts.poppins(
//                                       color: secondaryFontColor,
//                                       fontSize: 13.sp,
//                                       fontStyle: FontStyle.normal,
//                                       // fontWeight: FontWeight.w500,
//                                     ),
//                                     isCollapsed: true,
//                                     fillColor: mainAccentColor,
//                                   ),
//                                 ),
//                                 SizedBox(height: kVerticalPadding / 1.5),
//                                 Container(
//                                   // width: 100.w,
//                                   width: MediaQuery.of(context).size.width,
//                                   decoration: BoxDecoration(
//                                     color: mainAccentColor,
//                                     // color: Colors.white,
//                                     borderRadius: BorderRadius.circular(8.r),
//                                     // border: Border.all(
//                                     //   width: 1,
//                                     //   color: const Color(0xffE9E9E9),
//                                     // ),
//                                   ),
//                                   child: TextButton(
//                                     onPressed: () {
//                                       if (valueCheck()) {
//                                         // MySharedPref().writeUserNumber(widget
//                                         //     .userNumber); //// userNumber add to sharedpref
//                                         // if (widget.userIsReg) {
//                                         //   loginFunction();
//                                         // } else {
//                                         //   sendRegiOTP();
//                                         // }
//                                         loginFunction();
//                                       } else {
//                                         Fluttertoast.showToast(
//                                           toastLength: Toast.LENGTH_SHORT,
//                                           gravity: ToastGravity.CENTER,
//                                           timeInSecForIosWeb: 1,
//                                           backgroundColor: Colors.red,
//                                           textColor: Colors.white,
//                                           fontSize: 16.0,
//                                           msg:
//                                           "Please Insert Valid Phone Number & Password",
//                                         );
//                                       }
//                                       // Get.offAll(const HomePage());
//                                     },
//                                     child: Text(
//                                       "Login",
//                                       style: GoogleFonts.poppins(
//                                         fontSize: 21.sp,
//                                         color: mainColor,
//                                         fontStyle: FontStyle.normal,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 15.h,
//                                 ),
//                                 GestureDetector(
//                                   child: Padding(
//                                     padding: EdgeInsets.all(kPadding / 3),
//                                     child: RichText(
//                                       text: TextSpan(
//                                         text: 'Forgot password?',
//                                         style: GoogleFonts.ubuntu(
//                                           fontSize: 15.sp,
//                                           fontWeight: FontWeight.w500,
//                                           color: placeholderColor,
//                                         ),
//                                         // children: <TextSpan>[
//                                         //   TextSpan(
//                                         //     text: 'Click Here',
//                                         //     style: GoogleFonts.ubuntu(
//                                         //       fontSize: 15.sp,
//                                         //       fontWeight: FontWeight.w600,
//                                         //       color: mainAccentColor,
//                                         //       decoration:
//                                         //           TextDecoration.underline,
//                                         //     ),
//                                         //   ),
//                                         // ],
//                                       ),
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ),
//                                   onTap: () {
//                                     Get.to(
//                                           () => const ForgetPasswordPage(),
//                                     );
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(kPadding),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Not registered?",
//                                   style: GoogleFonts.poppins(
//                                     color: primaryFontColor,
//                                     fontSize: 15.sp,
//                                     fontStyle: FontStyle.normal,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 TextButton(
//                                   onPressed: () {
//                                     Get.to(const RegistrationPage());
//                                   },
//                                   child: Text(
//                                     "Register",
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 15.sp,
//                                       fontStyle: FontStyle.normal,
//                                       fontWeight: FontWeight.w600,
//                                       decoration: TextDecoration.underline,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               "or",
//                               style: GoogleFonts.poppins(
//                                 color: primaryFontColor,
//                                 fontSize: 12.sp,
//                                 fontStyle: FontStyle.normal,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsets.symmetric(vertical: kPadding / 2),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "Register with 'Queen' app?",
//                                     style: GoogleFonts.poppins(
//                                       color: primaryFontColor,
//                                       fontSize: 14.sp,
//                                       fontStyle: FontStyle.normal,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                   TextButton(
//                                     onPressed: () {
//                                       showDialog(
//                                         context: context,
//                                         builder: (context) => AlertDialog(
//                                           title: Text(
//                                             'How to Register for Freelancer',
//                                             style: GoogleFonts.poppins(
//                                               fontSize: 18.sp,
//                                               color: mainColor,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                           content: Text(
//                                             "1. Install 'On The Way Queen' app.\n2. Register to the 'On The Way Queen' app.\n3. Select 'Be Freelancer', Enter password & Submit.\n4. Come back to the On The Way Freelancing App.\n5. Login with Queen phone number & password",
//                                             style: GoogleFonts.poppins(
//                                               fontSize: 16,
//                                               color: primaryFontColor,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                           actions: <Widget>[
//                                             TextButton(
//                                               onPressed: () {
//                                                 Navigator.of(context).pop();
//                                               },
//                                               child: Text(
//                                                 "Cancel",
//                                                 style: GoogleFonts.poppins(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w600,
//                                                 ),
//                                               ),
//                                             ),
//                                             TextButton(
//                                               onPressed: () {
//                                                 // String appPackageName =
//                                                 //     'com.m360ict.ontheway_queen';
//                                                 // try {
//                                                 //   launch("market://details?id=" +
//                                                 //       appPackageName);
//                                                 // } on PlatformException catch (e) {
//                                                 //   launch(
//                                                 //       "https://play.google.com/store/apps/details?id=" +
//                                                 //           appPackageName);
//                                                 // } finally {
//                                                 //   launch(
//                                                 //       "https://play.google.com/store/apps/details?id=" +
//                                                 //           appPackageName);
//                                                 // }
//                                                 Navigator.of(context).pop();
//                                                 // ignore: deprecated_member_use
//                                                 launch(
//                                                     'https://play.google.com/store/apps/details?id=com.m360ict.ontheway_queen');
//                                                 // launchUrl(
//                                                 //   Uri.parse(
//                                                 //       'https://play.google.com/store/apps/details?id=com.m360ict.ontheway_queen'),
//                                                 // );
//                                               },
//                                               child: Text(
//                                                 "Ok",
//                                                 style: GoogleFonts.poppins(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w600,
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       );
//                                       // Get.to(const RegistrationPage());
//                                     },
//                                     child: Text(
//                                       "Click Here",
//                                       style: GoogleFonts.poppins(
//                                         fontSize: 15.sp,
//                                         fontStyle: FontStyle.normal,
//                                         fontWeight: FontWeight.w500,
//                                         decoration: TextDecoration.underline,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Text(
//                         "Planning the daily Work, it has\nnever been So impacting",
//                         style: GoogleFonts.poppins(
//                           fontSize: 12.sp,
//                           fontStyle: FontStyle.normal,
//                           fontWeight: FontWeight.w400,
//                           color: primaryFontColor,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               isLoading: isProgress,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   bool valueCheck() {
//     password = qPassController.text.toString().trim();
//     userNumber = qPhoneController.text.toString().trim();
//     if (userNumber.isNotEmpty &&
//         userNumber.startsWith('01') &&
//         userNumber.length == 11 &&
//         password.isNotEmpty &&
//         password.length > 5) {
//       return true;
//     } else {
//       return false;
//     }
//     // if (password.isNotEmpty && userNumber.isNotEmpty) {
//     //   return true;
//     // } else {
//     //   return false;
//     // }
//   }
//
//   loginFunction() async {
//     try {
//       showLoading();
//       Map data = {
//         "phone": userNumber,
//         "password": password,
//       };
//
//       var response = await http.post(Uri.parse(loginUrl), body: data);
//       bool resData = jsonDecode(response.body)['success'];
//
//       // String? headerAuth = response.headers['qotw'];
//       // print('>>>>>>>>>>>>>>>$headerAuth<<<<<<<<<<<<');
//       Navigator.pop(context);
//       // Get.off(context);
//       if (response.statusCode == 200 && resData == true) {
//         var getUserData = json.decode(response.body);
//         Fluttertoast.showToast(
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.green,
//           textColor: Colors.white,
//           fontSize: 16.0,
//           msg: "Successfully Logged In",
//         );
//         MySharedPref().writeUserLoginStatus(true);
//         MySharedPref().writeUserNumber(userNumber);
//         MySharedPref().writeUserID(getUserData["data"]["id"].toString());
//         // MySharedPref().writeAuth(headerAuth!);
//         // print('<><><><><><><><><><><><><>$userNumber ${getUserData["data"]["id"].toString()} $headerAuth');
//
//         Get.offAll(const HomePage());
//
//         // Navigator.pushAndRemoveUntil(
//         //   context,
//         //   MaterialPageRoute(
//         //     builder: (context) => const HomePage(),
//         //   ),
//         //   (value) {
//         //     MySharedPref().writeUserLoginStatus(true);
//         //     MySharedPref().writeUserNumber(userNumber);
//         //     MySharedPref().writeAuth(headerAuth);
//         //     return false;
//         //   },
//         // );
//
//       } else {
//         Fluttertoast.showToast(
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0,
//           msg: "Please Insert Valid User number & Password",
//         );
//       }
//     } on Exception catch (e) {
//       // Get.off(context);
//       debugPrint('$e');
//       Navigator.pop(context);
//       Fluttertoast.showToast(
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0,
//         msg: "Login Faild",
//       );
//     }
//   }
//
//   showLoading() {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => AlertDialog(
//         contentPadding: const EdgeInsets.all(60),
//         content: SizedBox(
//           // height: 20,
//           // width: 40,
//           child: Row(
//             children: const [
//               CircularProgressIndicator(),
//               SizedBox(
//                 width: 20,
//               ),
//               Text('Please Wait...')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }