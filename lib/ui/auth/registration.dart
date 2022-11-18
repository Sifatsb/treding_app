import 'package:flutter/material.dart';
import 'package:treding_app/configure/app_colors.dart';
import 'package:treding_app/configure/app_widgets.dart';
import 'package:treding_app/ui/auth/login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(

      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///Top Icons
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                }, icon: const Icon(Icons.home_outlined, color: Colors.grey,),),
                const Spacer(),
                IconButton(onPressed: (){

                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
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
                                      AppWidgets().iconButton(context,
                                          press: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                          },
                                          icon: Icon(Icons.refresh_outlined, color: Colors.grey,)),
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
            
            Center(
              child: Image.asset("assets/images/reg.png", height: h*0.2, width: w, fit: BoxFit.cover,),
            ),

            SizedBox(height: h*0.03,),

            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("Welcome to Invest Bazar!", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
            ),

            SizedBox(height: h*0.07,),

            Center(
              child:  SizedBox(
                  height: h*0.05,
                  width: w*0.8,
                  child: ElevatedButton(onPressed: () {
                    AppWidgets().successSnackBar(context, "Login With Binance");
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.person, color: Colors.black,),
                        SizedBox(width: w*0.04),
                        const Text('Sign up with phone or email', style: TextStyle(color: Colors.black, fontSize: 15),),
                      ],
                    ),)

              ),
            ),

            SizedBox(height: h*0.03,),

            AppWidgets().customDivider(context, height: h*0.04, width: w*0.4),

            SizedBox(height: h*0.03,),

            Center(
              child:  SizedBox(
                  height: h*0.05,
                  width: w*0.8,
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

            ///Already Account
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const Text('Already registered? '),
                  TextButton(onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }, child: const Text('Log In', style: TextStyle(fontSize: 16, color: Colors.orangeAccent, decoration: TextDecoration.none)),),
                ],
              )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                  onTap: (){
                    AppWidgets().successSnackBar(context, "Login With Binance");
                  },
                  child: TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()), );
                  }, child: const Text("Sign for an entity account", style: TextStyle(color: Colors.orangeAccent, fontSize: 16),),)
              ),
            ),

          ],
        ),
      ),

    );
  }
}
