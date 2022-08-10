import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/UI/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const WhatsAppHome(),
    );
  }
}
