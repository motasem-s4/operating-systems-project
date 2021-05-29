import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:os_project/getApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getApp(context);
  }
}
