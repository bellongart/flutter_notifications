import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin
  = FlutterLocalNotificationsPlugin();

// funcion para incializar los plugins de las notificaciones
Future<void> initNotification() async {
  // inilizamos el icono de la notificacion
  const AndroidInitializationSettings initializationSettingnsAndroid =
    AndroidInitializationSettings('ic_notification');
  // configuramos para android
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingnsAndroid
  );
  // y finalmente, llamamos al plugin de notificacion
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);  
}

// funcion para mostrar la notificacion
Future<void> showNotification() async {
  
  const AndroidNotificationDetails androidNotificationDetails = 
    AndroidNotificationDetails(
      '1', 'Notification',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker'
  );

  const NotificationDetails notificationDetails = NotificationDetails(
    android: androidNotificationDetails
  );

  await flutterLocalNotificationsPlugin.show(
    1, 'Test Notification', 'This is a test notification', notificationDetails
  );
}