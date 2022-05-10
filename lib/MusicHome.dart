import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'common/BaseUrl.dart';
import 'entity/BannerEntity.dart';
import 'http/HttpSetting.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class MusicHomeApp extends StatelessWidget {
  // ignore: slash_for_doc_comments
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Music',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MusicHomePage(),
    );
  }
}

class MusicHomePage extends StatefulWidget {
  MusicHomePage_ createState() => MusicHomePage_();
}

class MusicHomePage_ extends State<MusicHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic01.1sucai.com%2F180115%2F330814-1P11516240997.jpg&refer=http%3A%2F%2Fpic01.1sucai.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654759337&t=7562e72802b6ac060fdf7bd9205d14a6",
            fit: BoxFit.fill,
          );
        },
        itemHeight: 200,
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
