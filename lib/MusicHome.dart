import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'common/BaseUrl.dart';
import 'entity/BannerEntity.dart';
import 'http/HttpSetting.dart';
import 'package:dio/dio.dart';

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
  MusicHomePageState createState() => MusicHomePageState();
}

class MusicHomePageState extends State<MusicHomePage> {

  void getHttp() async {
    try {
      HttpSetting.requestHttp<BannerEntity>(
        BaseUrl.MUSIC_BASE + "/banner",
        parameters: null,
        method: 'GET',
        data: null,
        contentType: 'JSON',
        onSuccess: getA(bannerEntity:BannerEntity),
        onError: getB(s:String),
      );
    } catch (e) {
      print(e);
    }
  }

  Widget bannerSection = Container(
    height: 200,
    child: new Swiper(
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

  Widget bannerSection2 = Container(
    height: 200,
    child: new Swiper(
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

  @override
  Widget build(BuildContext context) {
    getHttp();
    return new Scaffold(
      body: new ListView(
        children: [
          bannerSection,
          SizedBox(
            height: 10.0,
          ),
          bannerSection2,
        ],
      )
    );
  }
}

getA({Object bannerEntity}) {
  print(bannerEntity.toString());
}

getB({Object s}) {
  print(s);
}
