import 'package:anatomy/module/profile_module/profile_screen/view/profile_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  var mobiledata=<mobile>[
    mobile(texts: "Profile Setting", icon:Icons.person_outline_rounded),
    mobile(texts: "Change Password", icon:Icons.password),
    mobile(texts: "Subscription Details", icon:Icons.credit_card_rounded),
    mobile(texts: "Language", icon:Icons.translate),
    mobile(texts: "Term and Conditions", icon:Icons.chat_outlined),
    mobile(texts: "Help", icon:Icons.headset_mic_outlined),
    mobile(texts: "Privacy Policy", icon:Icons.verified_user_outlined),
    mobile(texts: "App Info", icon:Icons.info_outline),
    mobile(texts: "Log Out", icon:Icons.logout),
  ];


}



