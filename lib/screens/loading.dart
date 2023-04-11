import 'dart:async';
import 'package:flutter/material.dart';
import 'package:musify/screens/register_screen.dart';
import 'package:musify/screens/root_page.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();

}

class _LoadingState extends State<Loading> {
  void initState() {
    super.initState();
    final ap = Provider.of<AuthProvider>(context, listen: false);
    Timer(
      Duration(seconds: 2),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ap.isSignedIn?Musify():RegisterScreen(),
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Dulcet",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Scaffold(
          body: Center(

            child: CircularProgressIndicator(),
          )),
    );
  }
}
