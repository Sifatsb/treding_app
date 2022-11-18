// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:in_app_update/in_app_update.dart';
// import 'package:on_the_way_training/controller/api_controller.dart';
// import 'package:on_the_way_training/ui/homepage/homepage.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// class UpdateScreen extends StatefulWidget {
//   const UpdateScreen({Key? key}) : super(key: key);
//
//   @override
//   UpdateScreenState createState() => UpdateScreenState();
// }
//
// class UpdateScreenState extends State<UpdateScreen>
//     with SingleTickerProviderStateMixin{
//   late AnimationController animationController;
//   late Animation<double> animation;
//   SharedPreferences? prefs;
//   var token, phone, password, type;
//
//
//   startTime() async {
//     var duration = const Duration(milliseconds: 3000);
//     return Timer(duration, _loadUserInfo);
//   }
//
//   _loadUserInfo() async {
//     if (token != "") {
//       type == 'trainee' ? traineeLogin(context, phone: phone, password: password, from: 'splash') : trainerLogin(context, phone: phone, password: password, from: 'splash');
//     } else {
//       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePageScreen()), (route) => false);
//     }
//   }
//
//   sharedPreferences() async{
//     prefs     = await SharedPreferences.getInstance();
//     token     = (prefs!.getString('token') ?? "");
//     phone     = (prefs!.getString('phone') ?? "");
//     password  = (prefs!.getString('password') ?? "");
//     type      = (prefs!.getString('type') ?? "");
//   }
//
//   _showDialog() async {
//     await Future.delayed(const Duration(milliseconds: 50));
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Update Available'),
//             content: const Text('You can now update On The Way Training!'),
//             actions: [
//               TextButton(
//                   onPressed: (){
//                     InAppUpdate.performImmediateUpdate();
//                   },
//                   child: const Text('Update')
//               ),
//               TextButton(
//                   onPressed: ()=> startTime(),
//                   child: const Text('Maybe Later')
//               ),
//             ],
//           );
//         });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//         vsync: this, duration: const Duration(seconds: 1));
//     animation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);
//     animation.addListener(() => setState(() {}));
//     animationController.forward();
//     _showDialog();
//     sharedPreferences();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.center,
//             colors: [
//               Color(0xffFF1C62),
//               Color(0xff040268),
//             ],
//           ),
//         ),
//         child: Stack(
//           fit: StackFit.expand,
//           children: <Widget>[
//             Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 30.0),
//                   child:Text.rich(
//                     TextSpan(
//                       text: 'A product of ',
//                       style: GoogleFonts.ubuntu(
//                         fontSize: 15,
//                         // fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: " On The Way",
//                           style: GoogleFonts.ubuntu(
//                             // color: Color(0xffddd),
//                             fontWeight: FontWeight.w500,
//                             fontSize: 15,
//                             color: Colors.pinkAccent,
//
//                             // fontSize: 14.sp,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//               ],),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "assets/images/logo.png",
//                   height: animation.value * 250,
//                   width: animation.value * 250,
//                 ),
//                 Text(
//                   "'নারী হোক উদ্যোক্তা'",
//                   style: GoogleFonts.ubuntu(
//                     color: Colors.white,
//                     fontSize: 22,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//             // Column(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: <Widget>[
//             //     Image(image: const AssetImage('assets/images/logo.png',),
//             //       width: animation.value * 250,
//             //       height: animation.value * 250,
//             //     ),
//             //     // const Text('Gul',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
//             //     // const Text('ডাক্তার এখন হাতের কাছে',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
//             //   ],
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }