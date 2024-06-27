import 'package:flutter/material.dart';
import 'package:getx_skeleton/utils/awesome_notifications_helper.dart';

import 'aone_app.dart';
import 'core/local/my_shared_pref.dart';
import 'utils/fcm_helper.dart';

Future<void> main() async {
  // wait for bindings
  WidgetsFlutterBinding.ensureInitialized();

  // init shared preference
  await MySharedPref.init();

  // inti fcm services
  await FcmHelper.initFcm();

  // initialize local notifications service
  await AwesomeNotificationsHelper.init();

  runApp(
    const AoneApp(),
  );
}
