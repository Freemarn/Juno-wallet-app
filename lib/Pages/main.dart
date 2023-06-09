import 'package:flutter/material.dart';
import 'package:juno_wallet_app/Pages/Home_page.dart';


void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}


class JunoApp extends StatefulWidget {
  const JunoApp({super.key});

  @override
  State<JunoApp> createState() => _JunoAppState();
}

class _JunoAppState extends State<JunoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Rango',
        style: TextStyle(
          fontSize: 60,
          color: Colors.deepPurple[200]
        ),
      ),
    );
  }
}