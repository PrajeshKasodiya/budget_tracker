import 'package:budget/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

// ignore: camel_case_types
class NotificationExample extends StatefulWidget {
  const NotificationExample({super.key});

  @override
  State<NotificationExample> createState() => _NotificationExampleState();
}

class _NotificationExampleState extends State<NotificationExample> {
  void showNotification() async {
    AndroidNotificationDetails androidDetails =
        const AndroidNotificationDetails(
            "notification-youtube", "Youtube notification",
            priority: Priority.max, importance: Importance.max);

    DarwinNotificationDetails iosDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notiDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);

    DateTime dateTime = DateTime.now().add(const Duration(seconds: 5));
    await notificationsPlugin.zonedSchedule(
        0,
        "sample notification",
        "This is a notification",
        tz.TZDateTime.from(dateTime, tz.local),
        notiDetails,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.wallClockTime,
        androidAllowWhileIdle: true,
        payload: "Notification-payload");

    // await notificationsPlugin.show(
    //     0, "sample notification", "This is a notification", notiDetails);
  }

  Future<void> checkForNotification() async {
    NotificationAppLaunchDetails? details =
        await notificationsPlugin.getNotificationAppLaunchDetails();
    if (details != null) {
      if (details.didNotificationLaunchApp) {
        NotificationResponse? response = details.notificationResponse;
        if (response != null) {
          String? payload = response.payload;
          print("Notification : -------------------------$payload");
        }
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkForNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showNotification,
        child: const Icon(Icons.notification_add),
      ),
      body: Container(
        color: Colors.blueGrey,
        width: double.maxFinite,
        height: double.maxFinite,
        child: Center(
          child: ElevatedButton(
            onPressed: showNotification,
            child: const Text("notification_Example"),
          ),
        ),
      ),
    );
  }
}
