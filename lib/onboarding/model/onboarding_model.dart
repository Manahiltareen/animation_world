import 'package:flutter/material.dart';

class OnboardingPageData {
  final String lottieAsset; // Lottie animation file path
  final String title;
  final String description;
  final Color backgroundColor;
  final String buttonText;

  OnboardingPageData({
    required this.lottieAsset,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.buttonText,
  });
}

final List<OnboardingPageData> onboardingPages = [
  OnboardingPageData(
    lottieAsset: 'images/Learning.json',
    title: 'Learn Smarter, Not Harder',
    description: 'Access interactive lessons, bite-sized tips, and engaging visuals that make learning feel effortless.',
    backgroundColor: Colors.pinkAccent,
    buttonText: 'Next',
  ),
  OnboardingPageData(
    lottieAsset: 'images/STUDENT.json',
    title: 'Your Study Buddy',
    description: 'Stay organized, track progress, and keep all your learning tools in one place.',
    backgroundColor: Colors.amberAccent,
    buttonText: 'Next',
  ),
  OnboardingPageData(
    lottieAsset: 'images/social media network.json',
    title: 'Connect & Collaborate',
    description: 'Join a community of learners, share ideas, and grow together.',
    backgroundColor: Colors.lightBlueAccent,
    buttonText: 'Get Started',
  ),
];
