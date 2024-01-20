import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_cv/Services/dataService.dart';
import 'package:pro_cv/app_state.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/MyResumePage.dart';
import 'package:pro_cv/pages/Cv_forms/ajout_exp.dart';
import 'package:pro_cv/pages/Cv_forms/exp_pro.dart';
import 'package:pro_cv/pages/Cv_forms/info_perso.dart';
import 'package:pro_cv/pages/Cv_forms/langues.dart';
import 'package:pro_cv/pages/Cv_forms/obj_perso.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/homepages/cv_forms.dart';
import 'package:pro_cv/pages/homepages/exported_page.dart';
import 'package:pro_cv/pages/homepages/profile.dart';
import 'package:pro_cv/pages/login.dart';
import 'package:pro_cv/pages/signup.dart';
import 'package:pro_cv/pages/start_screens/OnBoardingScreen.dart';
import 'package:pro_cv/pages/start_screens/start_screen1.dart';
import 'package:pro_cv/pages/start_screens/start_screen2.dart';
import 'package:pro_cv/pages/start_screens/start_screen3.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AppState()),
      ChangeNotifierProvider(create: (context) => DataService())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.light,
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: Colors.transparent,
    //     systemNavigationBarDividerColor: Colors.transparent,
    //     systemNavigationBarContrastEnforced: false,
    //     systemStatusBarContrastEnforced: false);

    // SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);``
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,0
    //     overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
    //     overlays: [SystemUiOverlay.bottom]);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return MaterialApp(
        theme: ThemeData(primaryColor: myPurple, fontFamily: "Poppins"),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen());
  }
}
