import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

class NotificationService {
  static final NotificationService _notificationService =
  NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  Future<void> init() async {
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    final AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('app_icon');

    final InitializationSettings initializationSettings =
    InitializationSettings(
        android: initializationSettingsAndroid,
        macOS: null);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future selectNotification(String payload) async {
  }

}
const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
  'channel id',
  'channel name',
  importance: Importance.max,
  priority: Priority.high,
    ticker: 'ticker'
);

Future <void> showNotification() async {
  var androidChannelSpecifics = AndroidNotificationDetails(
    'CHANNEL_ID',
    'CHANNEL_NAME',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    timeoutAfter: 5000,
    styleInformation: DefaultStyleInformation(true, true),
  );
  var platformChannelSpecifics =
  NotificationDetails(android: androidChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0,
    'Pomodoro Alert', //Duzenlenecek olan baslik
    'Pomodoro Timer Done', //duzenlenecek olan mesaj
    platformChannelSpecifics,
  );
}


Future<void> cancelAll() async {
  await flutterLocalNotificationsPlugin.cancelAll();
}
