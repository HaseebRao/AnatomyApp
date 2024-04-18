import 'package:anatomy/module/HomeModule/Widgets/home_drawer.dart';
import 'package:anatomy/module/HomeModule/home_view/home_view/home_view.dart';
import 'package:anatomy/module/HomeModule/home_view/home_view_binding/home_view_binding.dart';
import 'package:anatomy/module/Male/malepage/binding/male_binding.dart';
import 'package:anatomy/module/Male/malepage/view/male_view.dart';
import 'package:anatomy/module/profile_module/Selection/binding/selection_binding.dart';
import 'package:anatomy/module/profile_module/Selection/view/selection_view.dart';
import 'package:anatomy/module/profile_module/changepassword_screen/binding/changepassword_binding.dart';
import 'package:anatomy/module/profile_module/changepassword_screen/view/changepassword_view.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/binding/editprofile_binding.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/view/editprofile_view.dart';
import 'package:anatomy/module/profile_module/languagesettings/binding/languagesettings_binding.dart';
import 'package:anatomy/module/profile_module/languagesettings/controller/languagesettings_controller.dart';
import 'package:anatomy/module/profile_module/languagesettings/view/languagesetttings_view.dart';
import 'package:anatomy/module/profile_module/privacypolicy_screen/binding/privacypolicy_binding.dart';
import 'package:anatomy/module/profile_module/privacypolicy_screen/view/privacypolicy_view.dart';
import 'package:anatomy/module/profile_module/profile_screen/binding/profile_binding.dart';
import 'package:anatomy/module/profile_module/profile_screen/view/profile_view.dart';
import 'package:anatomy/module/profile_module/q1/view/q1_view.dart';
import 'package:anatomy/module/profile_module/splash_screen/binding/splash_binding.dart';
import 'package:anatomy/module/profile_module/splash_screen/view/splash_view.dart';
import 'package:anatomy/module/profile_module/termandcondition_screen/binding/termandcondition_binding.dart';
import 'package:anatomy/module/profile_module/termandcondition_screen/view/termandcondition_view.dart';
import 'package:anatomy/module/profilepage_module/profile_screen/binding/profile_binding.dart';
import 'package:anatomy/module/profilepage_module/profile_screen/view/profile_view.dart';
import 'package:anatomy/module/slpash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'module/profile_module/help_screen/binding/help_page_binding.dart';
import 'module/profile_module/help_screen/view/help_page.dart';
import 'module/profile_module/q1/binding/q1_binding.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SelectionView(),
          initialBinding: SelectionBinding(),
        );
      },
    );
  }
}
