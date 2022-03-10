import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/save_tabs.dart/save_llst_screen.dart';
import 'package:nomadz/view/save_tabs.dart/save_tab.dart';

import 'regisrtation_pages/on_bording_screen.dart';
import 'regisrtation_pages/setting_screen.dart';
import 'view/home_exploring_screen.dart';
import 'view/profile_menu/profile_menu_page.dart';
import 'view/save_tabs.dart/news_nevigating_tab.dart';
import 'view/save_tabs.dart/save_nav_tabs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //     // options: DefaultFirebaseOptions.currentPlatform
  //     );
  // MondoServices().addDriverInMongoDb(driverModel: {'name':'hqwnqin','age':'23'});
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              // builder: EasyLoading.init(),
              home: landingPage(),
            ));
  }
}

Widget landingPage() {
  return ProfileMenuPage();
}
