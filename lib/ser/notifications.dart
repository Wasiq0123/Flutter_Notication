import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationsServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  //Request Permission
  Future<void> getpermision() async {
    NotificationSettings settings = await messaging.requestPermission(
        sound: true,
        badge: true,
        alert: true,
        criticalAlert: true,
        provisional: false);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User permision Garented ');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('Provisional Authorized ');
    } else {
      print('User Not Found ');
    }
    //Get Device Token
    // Get the FCM token
    String? token = await messaging.getToken();
    print("FCM Token: $token");

    //------------------------Hnadle ForeFround Notifications--------------------
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('This is foreground message');
      print('message data ${message.data}');

      //handle he notifications
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    }
        //----Handle Background Masseage  while App is runing backgroung or Terminated --------------

        );
    FirebaseMessaging.onBackgroundMessage(_backgroundhandler);
  }

  static Future<void> _backgroundhandler(RemoteMessage message) async {
    print('Handler Background Message${message.messageId}');
  }
}
