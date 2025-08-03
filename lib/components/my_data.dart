import 'package:flutter/material.dart';

// Sealed class to handle different background types
sealed class BackgroundStyle {
  const BackgroundStyle();
}

// Solid color background
class SolidColorBackground extends BackgroundStyle {
  final Color color;

  const SolidColorBackground(this.color);
}

// Gradient background
class GradientBackground extends BackgroundStyle {
  final List<Color> colors;
  final Gradient gradient;

  GradientBackground({required this.colors, Gradient? gradient})
    : gradient =
          gradient ??
          LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: colors,
          );
}

class DummyData {
  String platformName;
  String userName;
  String logo;
  BackgroundStyle bgColor;
  Map<String, dynamic> data;
  String bio;
  String linkText;

  DummyData({
    required this.platformName,
    required this.userName,
    required this.logo,
    required this.bgColor,
    required this.data,
    required this.bio,
    required this.linkText,
  });
}

class DemoData {
  final List<DummyData> _dummyData = [
    DummyData(
      platformName: 'LinkedIn',
      userName: 'Imran Farooq',
      logo: 'images/linkedin.png',
      bgColor: SolidColorBackground(Color(0xFF0A66C2)),
      data: {"Followers": "1050", "Connections": "500+", "Posts": "16"},
      bio: 'Passionate Flutter Developer 🚀 | Transforming ideas into mobile apps 📱 | Always learning & evolving | Let’s connect and build something amazing!',
      linkText: 'Connect on LinkedIn'
    ),
    DummyData(
      platformName: 'Github',
      userName: 'Mani821',
      logo: 'images/github.png',
      bgColor: SolidColorBackground(Color(0xFF24292F)),
      data: {"Languages": "Dart/React", "Repos": "60+", "Packages": "1"},
      bio: "Open-source enthusiast 👨‍💻 | Flutter & React Dev | 60+ repos & counting 🚀 | Building, breaking, and fixing code daily! 🔥",
        linkText: 'Follow on Github'
    ),
    DummyData(
      platformName: 'Instagram',
      userName: 'luvemani',
      logo: 'images/insta.png',
      bgColor: GradientBackground(
        colors: [Color(0xFF833AB4), Color(0xFFFD1D1D), Color(0xFFFCAF45)],
      ),
      data: {"Followers": "540", "Posts": "1", "Following": "47"},
      bio: "📱 Code by day, content by night | Love tech, travel & creativity | Sharing snippets of life & dev adventures 🚀",
        linkText: 'Follow on Instagram'

    ),
    DummyData(
      platformName: 'X',
      userName: 'luvemani',
      logo: 'images/x.png',
      bgColor: SolidColorBackground(Color(0xFF000000)),
     data: {"Followers": "540", "Posts": "1", "Following": "47"},
      bio: "Flutter & React Dev 🚀 | Open Source Contributor | Learning & sharing tech insights | Follow for dev tips & project updates!",
      linkText: 'Follow on X'

    ),
  ];

  get dummyData => _dummyData;

  getBoardingPass(int index) {
    return _dummyData.elementAt(index);
  }
}
