import 'package:file_picker/file_picker.dart' as FilePicker;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/Chat_App/Models/firebase_helper.dart';
import 'package:health/Chat_App/Models/user_models.dart';
import 'package:health/Resources/Payment_gateway_page/payment_gateway.dart';
import 'package:health/View/Splash_Screen/splash_screen.dart';
import 'package:health/View/User_Pages/Home_page/Lab_resources/lab_more_packages.dart';
import 'package:health/View/User_Pages/Home_page/home_page.dart';
import 'package:health/View/User_Pages/Home_page/labtest.dart';
import 'package:health/View/User_Pages/Home_page/payment.dart';
import 'package:health/View/User_Pages/Home_page/settings.dart';
import 'package:health/ViewModel/Localization/localization.dart';
import 'package:uuid/uuid.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

var uuid = Uuid();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FilePicker.PlatformFile;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  User? currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    // Logged In
    UserModel? thisUserModel =
        await FirebaseHelper.getUserModelById(currentUser.uid);
    if (thisUserModel != null) {
      runApp(
          MyAppLoggedIn(userModel: thisUserModel, firebaseUser: currentUser));
    } else {
      runApp(MyApp());
    }
  } else {
    // Not logged in
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LabTest(),
      debugShowCheckedModeBanner: false,
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      translations: Language(),
    );
  }
}

class MyAppLoggedIn extends StatelessWidget {
  final UserModel userModel;
  final User firebaseUser;

  const MyAppLoggedIn(
      {super.key, required this.userModel, required this.firebaseUser});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: PaymentDetailsPage(
      //   packageName: "packageName",
      //   packagePrice: "packagePrice",
      //   ),
      home: LabTest(),
      debugShowCheckedModeBanner: false,
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      translations: Language(),
    );
  }
}
