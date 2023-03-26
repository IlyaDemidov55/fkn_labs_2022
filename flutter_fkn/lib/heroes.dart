import 'package:flutter/material.dart';

class Heroes {
  String name;
  String info;
  String pathImage;
  Color color;

  Heroes(this.name, this.info, this.pathImage, this.color);
}

final List<Heroes> marvelHeroes = [
  Heroes(
      "Deadpool",
      "Please don't make the super suit green... or animated!",
      "https://vgtimes.ru/uploads/posts/2021-01/1611148523_9.jpg",
      Colors.orange),
  Heroes("Iron Man", "I am Iron man",
      "https://wallpapercave.com/wp/wp10399248.jpg", Colors.blue),
  Heroes(
      "Doctor Strange",
      "End your assault on my world. Never come back. Do it and I'll break the loop.",
      "https://klike.net/uploads/posts/2023-01/1674376326_3-64.jpg",
      Colors.purple),
  Heroes(
      "Spider man",
      "When you can do the things that I can, but you don't, and then the bad things happen...",
      "https://kakogo-chisla.ru/wp-content/uploads/2022/07/den-CHeloveka-Pauka-kogda.jpg",
      Colors.green),
  Heroes(
      "Thor",
      "I choose to run towards my problems and not away from them. Because that's what heroes do.",
      "https://i.pinimg.com/originals/6f/83/ed/6f83eda5aa184209aed41808d1d321bc.jpg",
      Colors.indigo),
  Heroes(
      "Captain America",
      "I can do this all day.",
      "https://searchthisweb.com/wallpaper/captain-america_3317x2617_sli6f.jpg",
      Colors.red),
  Heroes(
      "Thanos",
      "Fun isn't something one considers when balancing the universe... this does put a smile on my face.",
      "https://mobimg.b-cdn.net/v3/fetch/ed/edc30d9fb65e4f4dd7749ce0ec733289.jpeg",
      Colors.yellow)
];
