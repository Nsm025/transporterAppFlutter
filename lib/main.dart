import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:liveasy/functions/runTransporterApiPost.dart';
import 'package:liveasy/providerClass/providerData.dart';

import 'package:liveasy/screens/LoginScreens/loginScreen.dart';
import 'package:liveasy/screens/errorScreen.dart';

import 'package:liveasy/screens/findLoadScreen.dart';
import 'package:liveasy/screens/loadDetailsScreen.dart';
import 'package:liveasy/screens/login_screen.dart';
>>>>>>> 8190f28bf3339760d05f8c1d70b2f07279ea7c93
import 'package:liveasy/screens/navigationScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  await FlutterConfig.loadEnvVariables();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderData>(
      create: (context) => ProviderData(),
<<<<<<< HEAD
      child: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (FirebaseAuth.instance.currentUser == null) {
                return GetMaterialApp(
                  home: LoginScreen(),
                );
              } else {
                runTransporterApiPost(mobileNum: FirebaseAuth.instance.currentUser!.phoneNumber.toString().substring(3,13));
                return GetMaterialApp(
                  home: NavigationScreen(),
                );
              }
            }
            else return ErrorScreen();
          }),
=======
      child: GetMaterialApp(
        home: FindLoadScreen(),
      ),
>>>>>>> 8190f28bf3339760d05f8c1d70b2f07279ea7c93
    );
  }
}
