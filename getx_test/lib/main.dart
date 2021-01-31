import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(ChambaDev());
}

class ChambaDev extends StatefulWidget {
  @override
  _ChambaDevState createState() => _ChambaDevState();
}

class _ChambaDevState extends State<ChambaDev> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
      },
    );
  }
}
