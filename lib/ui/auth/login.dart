import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treding_app/ui/auth/registration.dart';
import 'package:treding_app/ui/homepage/home_page.dart';

import '../../configure/app_colors.dart';
import '../../configure/app_widgets.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var phoneController    = TextEditingController();
  var passwordController = TextEditingController();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        elevation: 0,
        actions: [
          ///Top Icons
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [

              IconButton(onPressed: (){

                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: Container(
                        height: h*0.27,
                        color: AppColors.backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            children: [

                              Row(
                                children: [
                                  CircleAvatar(child: Image.asset("assets/images/logo.png")),
                                  SizedBox(width: w*0.03,),
                                  const Text("Invest Bazar Identy Service"),
                                ],
                              ),

                              SizedBox(height: h*0.03,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      AppWidgets().iconButton(context, icon: Icon(Icons.feedback_outlined, color: Colors.grey,)),
                                      Text("Feedback", style: TextStyle(color: Colors.grey.shade500),)
                                    ],
                                  ),
                                  SizedBox(width: h*0.03,),
                                  Column(
                                    children: [
                                      AppWidgets().iconButton(context, icon: Icon(Icons.refresh_outlined, color: Colors.grey,)),
                                      Text("Refresh", style: TextStyle(color: Colors.grey.shade500),)
                                    ],
                                  ),

                                ],
                              ),

                              SizedBox(
                                child: Divider(
                                  color: Colors.grey.shade100,
                                  thickness: 5,
                                ),
                              ),

                              Center(
                                child: TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("Cancel", style: TextStyle(color: Colors.grey, fontSize: 18),)),
                              )

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );

              }, icon: const Icon(Icons.more_horiz, color: Colors.grey,),),
              const VerticalDivider(
                color: Colors.grey,
                width: 1,
                indent: 15,
                endIndent: 15,
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.close, color: Colors.grey,),)
            ],
          ),
        ],

      ),
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              const Padding(padding: EdgeInsets.all(20), child: Text("Invest Bazar", style: TextStyle(color: Colors.black, fontSize: 30, )),),

              Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text("Email/Phone Number", style: TextStyle(color: Colors.grey.shade600, fontSize: 15),)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: h*0.02,),
                  ///DashBoard
                  SizedBox(
                    height: h*0.06,
                    // width: w-50,
                    child: Padding(
                      padding: EdgeInsets.only(left: w*0.03, right: h*0.02),
                      child: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          focusColor: Colors.grey.shade50,
                          border: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: h*0.02,),
                  ///DashBoard
                  SizedBox(
                    height: h*0.06,
                    // width: w-50,
                    child: Padding(
                      padding: EdgeInsets.only(left: w*0.03, right: h*0.02),
                      child: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "password",
                            fillColor: Colors.grey.shade50,
                            focusColor: Colors.grey,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                        ),
                      ),
                    ),
                  ),

                ],
              ),

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
                      child: const Text("Next", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),)
                ),
              ),

              SizedBox(height: h*0.03,),

              ///Divider
              AppWidgets().customDivider(context, height: h*0.04, width: w*0.4),

              SizedBox(height: h*0.03,),

              ///Login with Google
              Center(
                child:  SizedBox(
                    height: h*0.06,
                    width: w-50,
                    child: ElevatedButton(onPressed: () {
                      AppWidgets().successSnackBar(context, "Login With Binance");
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/google1.png", height: 30, width: 30,),
                          SizedBox(width: w*0.04),
                          const Text('Continue with Google', style: TextStyle(color: Colors.black, fontSize: 15),),
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
                  }, child: const Text("Create Binance Account", style: TextStyle(color: Colors.orangeAccent, fontSize: 16),),)
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
