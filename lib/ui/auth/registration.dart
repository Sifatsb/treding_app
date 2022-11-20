import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treding_app/configure/app_colors.dart';
import 'package:treding_app/configure/app_widgets.dart';
import 'package:treding_app/ui/auth/login.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isObscure = true;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // SizedBox(height: h*0.09,),

              Center(
                child: Image.asset("assets/images/reg.png", height: h*0.2, width: w, fit: BoxFit.cover,),
              ),

              SizedBox(height: h*0.03,),

              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Welcome to Invest Bazar!", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),)),
              ),

              SizedBox(height: h*0.07,),

              AppWidgets().inputField(context, controller: nameController, hintText: "Name"),
              SizedBox(height: h*0.009),
              AppWidgets().inputField(context, controller: phoneController, hintText: "Phone"),
              SizedBox(height: h*0.009),
              AppWidgets().inputField(context, controller: emailController, hintText: "Email"),
              SizedBox(height: h*0.009),
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
                      obscureText: isObscure,
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
                              color: AppColors.textColor2,
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

              SizedBox(height: h*0.009),
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
                      obscureText: isObscure,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Confirm Password",
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            child: isObscure
                                ? const Icon(
                              Icons.visibility_off_outlined,
                              color: AppColors.textColor2,
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

              SizedBox(height: h*0.05),

              Center(
                child:  SizedBox(
                    height: h*0.05,
                    width: w*0.8,
                    child: ElevatedButton(onPressed: () {
                      AppWidgets().successSnackBar(context, "Login With sign up");
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.person, color: Colors.black,),
                          SizedBox(width: w*0.04),
                          Text('Sign up',textAlign: TextAlign.center, style: GoogleFonts.poppins(textStyle: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontSize: 15)),)),
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

              ///Already Account
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    const Text('Already registered? '),
                    TextButton(onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    }, child: Text('Log In', style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16, color: Colors.orangeAccent, decoration: TextDecoration.none))),),
                  ],
                )
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: InkWell(
                    onTap: (){
                      AppWidgets().successSnackBar(context, "Login With entity");
                    },
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()), );
                    }, child: Text("Sign up for an entity account", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.orangeAccent, fontSize: 16),)),)
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
