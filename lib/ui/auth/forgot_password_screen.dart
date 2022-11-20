import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../configure/app_colors.dart';
import '../../configure/app_widgets.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ListView(
          // physics: BouncingScrollPhysics(),
          children:[
            SizedBox(height: h*0.08,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Center(
                  child: Image.asset("assets/images/reg.png", height: h*0.2, width: w, fit: BoxFit.cover,),
                ),

                SizedBox(height: h*0.15,),

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
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your Email/Phone"
                        ),
                      ),
                    ),
                  ),),

                SizedBox(height: h*0.04,),

                ///Login Button
                Center(
                  child:  SizedBox(
                      height: h*0.06,
                      width: w-50,
                      ///(route) => false
                      child: ElevatedButton(onPressed: () {
                        AppWidgets().successSnackBar(context, "Reset Password");
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                        ),
                        child: Text("Next", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),),)
                  ),
                ),



              ],
            ),
          ]
        ),
      ),
    );
  }
}
