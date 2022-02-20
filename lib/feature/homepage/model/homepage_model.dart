import 'package:flutter/material.dart';


class HomePageModel {
  final String title;
  final String subTitle;


  HomePageModel(
      {required this.title, required this.subTitle});
}

List<HomePageModel> cardModels = [
  HomePageModel(
      title: "Coding Journey",
      subTitle: "wwww.coding-journey.io",
     ),
  HomePageModel(
      title: "Smashing Magazine",
      subTitle: "https://www.smashingmagazine.com",
    ),
  HomePageModel(
      title: "UX Labs",
      subTitle: "https://www.uxlabs.co",
   ),
  HomePageModel(
      title: "The Netlify Blog",
      subTitle: "https://www.netlify.com/blog/",
     ),
  HomePageModel(
      title: "Student Life",
      subTitle: "https://www.studentlife.com",
      ),
  HomePageModel(
      title: "Hello.io",
      subTitle: "https://www.hello.io",
     ),
    
     
];