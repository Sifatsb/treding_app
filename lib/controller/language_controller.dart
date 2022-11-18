import 'package:get/get.dart';
class LocaleString extends Translations {
  var number  = '0123456789';
  var balance = '5000';
  @override
  Map<String, Map<String, String>> get keys =>
      {
        'en_US': {
          'trainee_title'           : 'As Trainee',
          'trainer_title'           : 'As Trainer',
          'training'                : 'Trainings',
          'phone'                   : 'Your Phone number*',
          'password'                : 'Your Password*',
          'login'                   : 'Login Now',
          'not_account'             : 'Don\'t have an account?',
          'register_now'            : '  Register Now.',
          'trainer_reg'             : '  Apply For a New',
          'login_title'             : 'Welcome to On The Way Training App',
          'name'                    : 'Full Name*',
          'email'                   : 'Your Email',
          'register'                : 'Create Now',
          'yes_account'             : 'Already have an account?',
          'login_now'               : '  Login Now.',
          'confirm_password'        : 'Confirm Password*',
          'occupation'              : 'Occupation*',
          'about_occupation'        : 'About Occupation*',
          'date_of_birth'           : 'Date of Birth*',
          'nid_front'               : 'NID Front Side',
          'photo'                   : 'Upload Your Photo*',
          'nid_back'                : 'NID Back Side',
          'error_name'              : 'Please Enter a Name',
          'error_phone'             : 'Please Enter a Phone Number',
          'error_dob'               : 'Please Select Your Date of Birth',
          'error_occupation'        : 'Please Enter Your Occupation',
          'error_about_occupation'  : 'Please Enter Something About Your Occupation',
          'error_password'          : 'Please Enter a Password',
          'error_password_match'    : 'Please Enter Same Password',
          'error_nid_front'         : 'Please Select Your NID Front Side',
          'error_nid_back'          : 'Please Select Your NID Back Side',
          'error_last_education'    : 'Please Upload Your Last Education Certificate',
          'error_upload_cv'         : 'Please Upload Your Curriculum Vitae',
          'error_photo'             : 'Please Upload Your Photo',
          'last_education'          : 'Last Education\nCertificate*',
          'upload_cv'               : 'Upload Curriculum\n Vitae*',
          'dashboard_welcome'       : 'Welcome,',
          'chose_language'          : 'Choose Your Language',
          'profile'                 : 'Profile',
          'language'                : 'Language',
          'logout'                  : 'Logout',
          'upcoming'                : 'Upcoming Training',
          'all_trainer'             : 'All Trainer',
          'all_institute'           : 'All Institute',
          'see_all'                 : 'See All',
          'finish'                  : 'Finished Training',
          'institute'               : 'Training Videos',
          'trainer'                 : 'Trainer Based',
          'topic'                   : 'Search Training',
          'live'                    : 'Live Training',
          'training_details'        : 'Training Details',
          'training_title'          : 'Training Title',
          'already_registered'      : 'Already Registered!',
          'apply'                   : 'Apply',
          'cancel'                  : 'Cancel',
          'trainer_home'            : 'Create a Training',
          'create_training'         : 'Create Training',
        },
        'bn_BN': {
          'trainee_title'           : 'ট্রেইনি',
          'trainer_title'           : 'ট্রেইনার',
          'training'                : 'ট্রেইনিং সমূহ',
          'phone'                   : 'আপনার মোবাইল নাম্বার*',
          'password'                : 'আপনার পাসওয়ার্ড*',
          'login'                   : 'প্রবেশ করুন',
          'not_account'             : 'পূর্বে অ্যাকাউন্ট নাই?',
          'register_now'            : ' রেজিস্টার করুন',
          'trainer_reg'             : ' নতুন ট্রেইনার হিসাবে আবেদন করুন',
          'login_title'             : 'অন দা অয়ে ট্রেইনিং অ্যাপে স্বাগতম',
          'name'                    : 'আপনার নাম*',
          'email'                   : 'আপনার ইমেইল',
          'register'                : 'অ্যাকাউন্ট তৈরি করুন',
          'yes_account'             : 'পূর্বে অ্যাকাউন্ট আছে?',
          'login_now'               : ' লগইন করুন',
          'confirm_password'        : 'সুনিশ্চিত পাসওয়ার্ড*',
          'occupation'              : 'আপনার পেশা*',
          'about_occupation'        : 'আপনার পেশা সম্পর্কে*',
          'date_of_birth'           : 'আপনার জন্মদিন*',
          'nid_front'               : 'এনআইডির সামনের অংশ',
          'photo'                   : 'আপনার ছবি আপলোড করুন*',
          'nid_back'                : 'এনআইডির পিছনের অংশ',
          'error_name'              : 'আপনার নামটি প্রদান করুন',
          'error_phone'             : 'আপনার মোবাইল নাম্বার প্রদান করুন',
          'error_dob'               : 'আপনার জন্ম তারিখ নির্বাচন করুন',
          'error_occupation'        : 'আপনার পেশা লিখুন',
          'error_about_occupation'  : 'আপনার পেশা সম্পর্কে লিখুন',
          'error_password'          : 'একটি পাসওয়ার্ড প্রদান করুন',
          'error_password_match'    : 'একই পাসওয়ার্ড প্রদান করুন',
          'error_nid_front'         : 'এনআইডির সামনের অংশ\nনির্বাচন করুন',
          'error_nid_back'          : 'এনআইডির পিছনের অংশ\nনির্বাচন করুন',
          'error_last_education'    : 'সর্বশেষ শিক্ষাগত যোগ্যতার সনদপত্র আপলোড করুন',
          'error_upload_cv'         : 'আপনার CV আপলোড করুন',
          'error_photo'             : 'আপনার ছবি আপলোড করুন',
          'last_education'          : 'সর্বশেষ শিক্ষাগত \nযোগ্যতার সনদপত্র*',
          'upload_cv'               : 'আপনার CV আপলোড\nকরুন*',
          'dashboard_welcome'       : 'স্বাগতম,',
          'chose_language'          : 'আপনার ভাষা নির্বাচন করুন',
          'profile'                 : 'প্রোফাইল',
          'language'                : 'ভাষা',
          'logout'                  : 'লগআউট',
          'upcoming'                : 'আপকামিং ট্রেইনিং',
          'all_trainer'             : 'সকল ট্রেইনার',
          'all_institute'           : 'সকল প্রতিষ্ঠান',
          'see_all'                 : 'সবগুলো',
          'finish'                  : 'সম্পাদিত ট্রেইনিং',
          'institute'               : 'ট্রেইনিং ভিডিও সমূহ',
          'trainer'                 : 'ট্রেইনার ভিত্তিক',
          'topic'                   : 'অনুসন্ধান ট্রেইনিং',
          'live'                    : 'সরাসরি ট্রেইনিং',
          'training_details'        : 'ট্রেইনিং সম্পর্কে বিস্তারিত',
          'training_title'          : 'ট্রেইনিংয়ের নাম',
          'already_registered'      : 'পূর্বেই রেজিস্টার্ড!',
          'apply'                   : 'আবেদন করুন',
          'cancel'                  : 'বাতিল করুন',
          'trainer_home'            : 'ট্রেইনিং শুরু করুন',
          'create_training'         : 'ট্রেইনিং তৈরি করুন',
        }
      };
}