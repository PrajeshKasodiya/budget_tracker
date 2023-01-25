import 'dart:developer';
import 'package:budget/controller/Hive/hive_init.dart';
import 'package:budget/controller/Provider/Provider_helper/authentication_provider.dart';
import 'package:budget/controller/firebase/firebase_option.dart';
import 'package:budget/model/user_entity.dart';
import 'package:budget/controller/Provider/Provider_screen/sign_in.dart';
import 'package:budget/view/%20authentication/welcome.dart';
import 'package:budget/view/master/profile.dart';
import 'package:budget/widgets/properties.dart';
import 'package:budget/widgets/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest_10y.dart';
import 'package:firebase_core/firebase_core.dart';

FlutterLocalNotificationsPlugin notificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

  /* Firebase Initialize */
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Hive Initialize
  await Hive.initFlutter();
  await HiveInit.initialize();

  // notification
  initializeTimeZones();
  AndroidInitializationSettings androidSettings =
      const AndroidInitializationSettings("@mipmap/ic_launcher");

  DarwinInitializationSettings iosSettings = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestCriticalPermission: true,
      requestSoundPermission: true);

  InitializationSettings initializationSettings =
      InitializationSettings(android: androidSettings, iOS: iosSettings);

  bool? inializated = await notificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (response) {
      log(response.payload.toString());
    },
  );

  print("notification: --------------------$inializated");
}

final user = User();
final Properties properties = Properties();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthenticationProvider>(create: (context) => AuthenticationProvider()),
        ],
        child: MaterialApp(
            title: 'Budget Tracker',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primaryColor: const Color(0xFF6D5FFD)),
            home:   const WelcomePage()));
  }
}
