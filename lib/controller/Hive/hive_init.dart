import 'package:hive_flutter/hive_flutter.dart';

HiveInit hiveInit = HiveInit();

class HiveInit {
  static String get jobeeBox => "jobeeBox";
  static String get userBox => "userBox";

  static Future initialize() async {
    await Hive.openBox(jobeeBox);
    await Hive.openBox(userBox);
  }
}
