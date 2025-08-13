// import 'package:flutter/material.dart';
//
// // Sealed class to handle different background types
// sealed class BackgroundStyle {
//   const BackgroundStyle();
// }
//
// // Solid color background
// class SolidColorBackground extends BackgroundStyle {
//   final Color color;
//
//   const SolidColorBackground(this.color);
// }
//
// // Gradient background
// class GradientBackground extends BackgroundStyle {
//   final List<Color> colors;
//   final Gradient gradient;
//
//   GradientBackground({required this.colors, Gradient? gradient})
//     : gradient =
//           gradient ??
//           LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: colors,
//           );
// }
//
// class DummyData {
//   String platformName;
//   String userName;
//   String logo;
//   BackgroundStyle bgColor;
//   Map<String, dynamic> data;
//   String bio;
//   String linkText;
//
//   DummyData({
//     required this.platformName,
//     required this.userName,
//     required this.logo,
//     required this.bgColor,
//     required this.data,
//     required this.bio,
//     required this.linkText,
//   });
// }
//
// class DemoData {
//   final List<DummyData> _dummyData = [
//     DummyData(
//       platformName: 'LinkedIn',
//       userName: 'Imran Farooq',
//       logo: 'images/linkedin.png',
//       bgColor: SolidColorBackground(Color(0xFF0A66C2)),
//       data: {"Followers": "1050", "Connections": "500+", "Posts": "16"},
//       bio: 'Passionate Flutter Developer 🚀 | Transforming ideas into mobile apps 📱 | Always learning & evolving | Let’s connect and build something amazing!',
//       linkText: 'Connect on LinkedIn'
//     ),
//     DummyData(
//       platformName: 'Github',
//       userName: 'Mani821',
//       logo: 'images/github.png',
//       bgColor: SolidColorBackground(Color(0xFF24292F)),
//       data: {"Languages": "Dart/React", "Repos": "60+", "Packages": "1"},
//       bio: "Open-source enthusiast 👨‍💻 | Flutter & React Dev | 60+ repos & counting 🚀 | Building, breaking, and fixing code daily! 🔥",
//         linkText: 'Follow on Github'
//     ),
//     DummyData(
//       platformName: 'Instagram',
//       userName: 'luvemani',
//       logo: 'images/insta.png',
//       bgColor: GradientBackground(
//         colors: [Color(0xFF833AB4), Color(0xFFFD1D1D), Color(0xFFFCAF45)],
//       ),
//       data: {"Followers": "540", "Posts": "1", "Following": "47"},
//       bio: "📱 Code by day, content by night | Love tech, travel & creativity | Sharing snippets of life & dev adventures 🚀",
//         linkText: 'Follow on Instagram'
//
//     ),
//     DummyData(
//       platformName: 'X',
//       userName: 'luvemani',
//       logo: 'images/x.png',
//       bgColor: SolidColorBackground(Color(0xFF000000)),
//      data: {"Followers": "540", "Posts": "1", "Following": "47"},
//       bio: "Flutter & React Dev 🚀 | Open Source Contributor | Learning & sharing tech insights | Follow for dev tips & project updates!",
//       linkText: 'Follow on X'
//
//     ),
//   ];
//
//   get dummyData => _dummyData;
//
//   getBoardingPass(int index) {
//     return _dummyData.elementAt(index);
//   }
// }
import 'package:flutter/material.dart';

// Background styles
sealed class BackgroundStyle {
  const BackgroundStyle();
}

class SolidColorBackground extends BackgroundStyle {
  final Color color;
  const SolidColorBackground(this.color);
}

class GradientBackground extends BackgroundStyle {
  final List<Color> colors;
  final Gradient gradient;

  GradientBackground({required this.colors, Gradient? gradient})
      : gradient = gradient ??
      LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      );
}

// Single DummyData class for both social & weather
class DummyData {
  // Common fields
  final String platformName; // or cityName for weather
  final String userName; // or empty or some placeholder for weather
  final String logo; // image path or icon path
  final BackgroundStyle bgColor;
  final Map<String, dynamic> data; // can hold followers or temp etc
  final String bio; // description or bio
  final String linkText;

  // Optional weather-specific fields
  final IconData? weatherIcon;
  final String? weatherMain;
  final String? dateTime;

  DummyData({
    required this.platformName,
    required this.userName,
    required this.logo,
    required this.bgColor,
    required this.data,
    required this.bio,
    required this.linkText,
    this.weatherIcon,
    this.weatherMain,
    this.dateTime,
  });
}
class DemoData {
  final List<DummyData> _dummyData = [
    DummyData(
      platformName: 'Karachi',
      userName: 'Clear Sky',
      logo: 'images/sunny.png',
      bgColor: GradientBackground(
        colors: [Color(0xFFFFE57F), Color(0xFFFFC107)],
      ),
      data: {
        "Temp": "34.5°C",
        "Humidity": "45%",
        "Wind": "5.3 m/s",
        "Pressure": "1012 hPa",
      },
      bio: 'Bright and sunny day with clear skies and gentle breeze.',
      linkText: 'More details',
    ),
    DummyData(
      platformName: 'Lahore',
      userName: 'Cloudy',
      logo: 'images/cloud.png',
      bgColor: GradientBackground(
        colors: [Color(0xFF90A4AE), Color(0xFF607D8B)],
      ),
      data: {
        "Temp": "29.8°C",
        "Humidity": "60%",
        "Wind": "3.0 m/s",
        "Pressure": "1008 hPa",
      },
      bio: 'Overcast skies with mild humidity and cool wind.',
      linkText: 'More details',
    ),
    DummyData(
      platformName: 'Islamabad',
      userName: 'Light Rain',
      logo: 'images/rain.png',
      bgColor: GradientBackground(
        colors: [Color(0xFF4FC3F7), Color(0xFF0288D1)],
      ),
      data: {
        "Temp": "25.4°C",
        "Humidity": "75%",
        "Wind": "4.5 m/s",
        "Pressure": "1005 hPa",
      },
      bio: 'Light rain showers expected throughout the day.',
      linkText: 'More details',
    ),
    DummyData(
      platformName: 'Peshawar',
      userName: 'Thunderstorm',
      logo: 'images/thunderstorm.png',
      bgColor: SolidColorBackground(Color(0xFF424242)),
      data: {
        "Temp": "22.1°C",
        "Humidity": "80%",
        "Wind": "7.8 m/s",
        "Pressure": "1000 hPa",
      },
      bio: 'Thunderstorms with heavy rain and strong winds.',
      linkText: 'More details',
    ),
  ];

  get dummyData => _dummyData;

  getBoardingPass(int index) {
    return _dummyData.elementAt(index);
  }
}

