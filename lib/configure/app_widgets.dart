// ignore_for_file: use_build_context_synchronously


import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'app_colors.dart';

class AppWidgets {


  ///for button
  button(BuildContext context, {text, press, height, width, top, left, right, bottom, color, radius, style}){
    return Center(
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(top: top ?? 0, left: left ?? 0, right: right ?? 0, bottom: bottom ?? 0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(top: 5,bottom: 5), backgroundColor: color ?? const Color(0xff0ce0ff),
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 5))
            ),
            onPressed: press,
            child: Text(text,
              style: style ?? AppStyle.title1,
            )
        ),
      ),
    );
  }


  ///for Icon Button
  iconButton(BuildContext context, {icon, press, size}){
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(right: 10, bottom: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.35),
                    blurRadius: 2,
                    spreadRadius: 1.5,
                    offset: const Offset(0, 2.0))
              ]),
          child: icon
      ),
    );
  }

  ///Divider
  customDivider(BuildContext context, {height, width}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: width,
          height: height,
          child: const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
        ),
        const Text("or"),
        SizedBox(
          width: width,
          height: height,
          child: const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }

  ///for input field
  inputField(BuildContext context, {controller, hintText, keyboardType, icon, autofillHints, obscureText, suffixIcon, readOnly, maxLine}){
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15, left: 25, right: 25),
      child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 1),
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSize.borderRadiusSize),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: Colors.transparent,
                  offset: Offset(-1, -1),
                  blurRadius: 10,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //for search
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(right: 10, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.35),
                                blurRadius: 2,
                                spreadRadius: 1.5,
                                offset: const Offset(0, 2.0))
                          ]),
                      child: icon
                  ),

                  Expanded(
                    child: TextField(
                      controller: controller,
                      keyboardType: keyboardType,
                      obscureText: obscureText ?? false,
                      autofillHints: [autofillHints],
                      readOnly: readOnly ?? false,
                      textInputAction: TextInputAction.done,
                      maxLines: maxLine ?? 1,
                      style: const TextStyle(fontSize: 17, letterSpacing: 1),
                      decoration: InputDecoration(
                          hintText: hintText,
                          isCollapsed: true,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: suffixIcon,
                          contentPadding: const EdgeInsets.only(top: 8, bottom: 18, left: 10)),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  ///for drawer
  final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'বাংলা', 'locale': const Locale('bn', 'BN')},
  ];
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }
  changeLanguageAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text('chose_language'.tr),
      content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text(locale[index]['name']),
                    onTap: (){
                      updateLanguage(locale[index]['locale']);
                      if(locale[index]['name'] == 'ENGLISH'){
                        // loginController.language.value = 'false';
                      }
                      else{
                        // loginController.language.value = 'true';
                      }
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.blue,
                );
              },
              itemCount: locale.length)),
    );
// show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  ///Second App bar
  // secondAppBar(BuildContext context, controller, title){
  //   return AppBar(
  //     backgroundColor: AppColors.secondaryColor,
  //     elevation: 3 ,
  //     leading: GestureDetector(
  //       onTap: (){
  //         Navigator.pop(context);
  //       },
  //         child: const Icon(Icons.arrow_back)),
  //     title: Text(
  //       '$title', style: AppStyle.title3,
  //     ),
  //     actions: [
  //       Padding(
  //         padding: const EdgeInsets.only(right: 8),
  //         child: CustomPopupMenu(
  //           verticalMargin: -25,
  //           horizontalMargin: 9,
  //           arrowSize: 20,
  //           controller: controller,
  //           arrowColor: AppColors.backgroundColor.withOpacity(.95),
  //           menuBuilder: ()=> Container(
  //             decoration: BoxDecoration(
  //                 color: AppColors.backgroundColor.withOpacity(.95),
  //                 borderRadius: BorderRadius.circular(5)
  //             ),
  //             child: IntrinsicWidth(
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.stretch,
  //                 children: [
  //                   TextButton(
  //                     style: TextButton.styleFrom(
  //                         padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 0),
  //                         primary: Colors.black
  //                     ),
  //                     onPressed: (){
  //                       Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
  //                       controller.hideMenu();
  //                     },
  //                     child: Text('profile'.tr),
  //                   ),
  //                   const Divider(height: 0,),
  //                   TextButton(
  //                     style: TextButton.styleFrom(
  //                         padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 0),
  //                         primary: Colors.black
  //                     ),
  //                     onPressed: (){
  //                       changeLanguageAlertDialog(context);
  //                       controller.hideMenu();
  //                     },
  //                     child: Text('language'.tr),
  //
  //                   ),
  //                   const Divider(height: 0,thickness: 1,),
  //                   TextButton(
  //                     style: TextButton.styleFrom(
  //                         padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 0),
  //                         primary: Colors.black
  //                     ),
  //                     onPressed: ()async{
  //                       SharedPreferences prefs = await SharedPreferences.getInstance();
  //                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen('Trainer')));
  //                       controller.hideMenu();
  //                       await prefs.setString('type', '');
  //                       await prefs.setString('mobile', '');
  //                       await prefs.setString('password', '');
  //                     },
  //                     child: Text('logout'.tr),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           pressType: PressType.singleClick,
  //           child: const Icon(Icons.more_vert,color: AppColors.textColor),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  ///for drawer items
  drawerItems({IconData? icon,String? title, onTap}){
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          child: Icon(icon!, color: AppColors.backgroundColor,),
        ),
        title: Text(title!,style: const TextStyle(
            fontSize: 16
        ),),
      ),
    );
  }

  ///for snack bar
  successSnackBar(BuildContext context, String exp){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.primaryColor,
        content: Text(
          exp,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  ///for wrong snack bar
  wrongSnackBar(BuildContext context, String exp){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.redColor,
        content: Text(
          exp,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
    );
  }

  ///show loader dialog
  showLoaderDialog(BuildContext context) {
    AlertDialog alert=AlertDialog(
      backgroundColor: Colors.transparent,
      content:  Center(child: Lottie.asset('assets/images/circular_progress.json',height: 60)),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }

  ///for exit alert dialog
  exitAlertDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (context)=> AlertDialog(
          content: const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Are you sure want to exit from '),
                TextSpan(
                  text: 'On The Way Training?',
                  style: TextStyle(
                      fontWeight:
                      FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: ()=>Navigator.pop(context),
                child: const Text('NO',style: TextStyle(color: AppColors.primaryColor),)
            ),
            TextButton(
                onPressed: ()=>SystemNavigator.pop(),
                child: const Text('Exit',style: TextStyle(color: AppColors.redColor),)
            ),
          ],
        )
    );
  }

  ///Training Details Text
  trainingDetails({title, text}){
    return Align(
        alignment: Alignment.topLeft,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: '     $title: ', style: const TextStyle(color: AppColors.secondaryColor, fontSize: 26)),
              TextSpan(text: '$text', style: const TextStyle(color: AppColors.primaryColor, fontSize: 26))
            ],
          ),
          textScaleFactor: 0.5,
        )
    );
  }

  ///No More Trainings are Available
  noMoreTrainings(hasMore){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Center(
        child: hasMore ? const CircularProgressIndicator() : const Text('No More Trainings are Available'),
      ),
    );
  }
}