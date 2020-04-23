import 'dart:async';

import 'package:app_sobat/login.dart';
import 'package:flutter/material.dart';

class LauncherView extends StatefulWidget {
  @override
  _LauncherViewState createState() => _LauncherViewState();
}

class _LauncherViewState extends State<LauncherView> {

  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 1);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logobadminton.png',
          width: 500.0,
          height: 500.0,
        ),
      ),
    );
  }
}
