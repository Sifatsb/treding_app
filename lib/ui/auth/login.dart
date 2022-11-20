import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treding_app/ui/auth/forgot_password_screen.dart';
import 'package:treding_app/ui/auth/registration.dart';
import 'package:treding_app/ui/homepage/home_page.dart';

import '../../configure/app_colors.dart';
import '../../configure/app_widgets.dart';
import '../../configure/colors.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var phoneController    = TextEditingController();
  var passwordController = TextEditingController();
  bool isObscure = true;

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColors.appBarColor,
      //   elevation: 0,
      //   actions: [
      //     ///Top Icons
      //     Row(
      //       // mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //
      //         IconButton(onPressed: (){
      //
      //           showModalBottomSheet(
      //             context: context,
      //             builder: (BuildContext context) {
      //               return SingleChildScrollView(
      //                 child: Container(
      //                   height: h*0.27,
      //                   color: AppColors.backgroundColor,
      //                   child: Padding(
      //                     padding: const EdgeInsets.all(15),
      //                     child: Column(
      //                       // mainAxisAlignment: MainAxisAlignment.center,
      //                       // mainAxisSize: MainAxisSize.min,
      //                       children: [
      //
      //                         Row(
      //                           children: [
      //                             CircleAvatar(child: Image.asset("assets/images/logo.png")),
      //                             SizedBox(width: w*0.03,),
      //                             Text("Invest Bazar Identy Service", style: GoogleFonts.poppins(),),
      //                           ],
      //                         ),
      //
      //                         SizedBox(height: h*0.03,),
      //
      //                         Row(
      //                           children: [
      //                             Column(
      //                               children: [
      //                                 AppWidgets().iconButton(context, icon: Icon(Icons.feedback_outlined, color: Colors.grey,)),
      //                                 Text("Feedback", style: TextStyle(color: Colors.grey.shade500),)
      //                               ],
      //                             ),
      //                             SizedBox(width: h*0.03,),
      //                             Column(
      //                               children: [
      //                                 AppWidgets().iconButton(context, icon: Icon(Icons.refresh_outlined, color: Colors.grey,)),
      //                                 Text("Refresh", style: TextStyle(color: Colors.grey.shade500),)
      //                               ],
      //                             ),
      //
      //                           ],
      //                         ),
      //
      //                         SizedBox(
      //                           child: Divider(
      //                             color: Colors.grey.shade100,
      //                             thickness: 5,
      //                           ),
      //                         ),
      //
      //                         Center(
      //                           child: TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("Cancel", style: TextStyle(color: Colors.grey, fontSize: 18),)),
      //                         )
      //
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               );
      //             },
      //           );
      //
      //         }, icon: const Icon(Icons.more_horiz, color: Colors.grey,),),
      //         const VerticalDivider(
      //           color: Colors.grey,
      //           width: 1,
      //           indent: 15,
      //           endIndent: 15,
      //         ),
      //         IconButton(onPressed: (){}, icon: const Icon(Icons.close, color: Colors.grey,),)
      //       ],
      //     ),
      //   ],
      //
      // ),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: h*0.15,),

                Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 27), child: Text("Invest Bazar", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontSize: 30,))),),
                  ],
                ),

                SizedBox(height: h*0.04,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email/Phone"
                        ),
                      ),
                    ),
                  ),),

                SizedBox(height: h*0.02,),

                Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            suffixIcon: InkWell(
                            onTap: () {
                      setState(() {
                      isObscure = !isObscure;
                      });
                      },
                        child: isObscure
                            ? const Icon(
                          Icons.visibility_off_outlined,
                          color: AppColors.grayLight,
                        )
                            : const Icon(
                          Icons.visibility_outlined,
                          color: AppColors.grayLight,
                        ),
                      )
                        ),
                      ),
                    ),
                  ),),

                SizedBox(height: h*0.05,),

                ///Login Button
                Center(
                  child:  SizedBox(
                    height: h*0.06,
                    width: w-50,
                      ///(route) => false
                      child: ElevatedButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()), );
                        AppWidgets().successSnackBar(context, "Login With Number");
                      },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
),
                        child: Text("Next", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),),)
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()), );
                      }, child: Text("Froget password?", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.orangeAccent, fontSize: 16)),),),
                    ),
                  ],
                ),

                // SizedBox(height: h*0.01,),

                ///Divider
                AppWidgets().customDivider(context, height: h*0.04, width: w*0.4),

                SizedBox(height: h*0.02,),

                ///Login with Google
                Center(
                  child:  SizedBox(
                      height: h*0.05,
                      width: w*0.8,
                      child: ElevatedButton(onPressed: () {
                        AppWidgets().successSnackBar(context, "Login With google");
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/images/google.png", height: 30, width: 30,),
                            SizedBox(width: w*0.04),
                            Text('Continue with Google', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontSize: 15),),),
                          ],
                        ),)

                  ),
                ),

                SizedBox(height: h*0.03,),

                Center(
                  child:  SizedBox(
                      height: h*0.05,
                      width: w*0.8,
                      child: ElevatedButton(onPressed: () {
                        AppWidgets().successSnackBar(context, "Login With facebook");
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/images/fb.png", height: 30, width: 30,),
                            SizedBox(width: w*0.04),
                            Text('Continue with Facebook', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontSize: 15),),),
                          ],
                        ),)
                  ),
                ),

                SizedBox(height: h*0.03,),

                ///Login With Binance
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: InkWell(
                    onTap: (){
                      AppWidgets().successSnackBar(context, "Login With Binance");
                    },
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()), );
                    }, child: Text("Create Binance Account", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.orangeAccent, fontSize: 16)),),)
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
