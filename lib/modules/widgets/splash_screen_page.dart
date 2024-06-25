import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_codeyad_techblog/main_screen.dart';
import 'package:flutter_codeyad_techblog/modules/home/home_page.dart';

class splashScreenPage extends StatefulWidget {
  const splashScreenPage({super.key});

  @override
  State<splashScreenPage> createState() => _splashScreenPageState();
}

class _splashScreenPageState extends State<splashScreenPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => MainScreen()),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Flutter tips',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}
