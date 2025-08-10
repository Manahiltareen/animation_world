import 'package:animation_world/animated_cards/showcase.dart';
import 'package:animation_world/animated_cards/splash.dart';
import 'package:animation_world/animated_color_palette/animatedColor.dart';
import 'package:animation_world/onboarding/view/onboarding_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedOnboardingScreen(),
      // AnimatedColorPalette()
      // FlipzySplash(nextScreen: Showcase()),
    );
  }
}
