import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:json_serializable/builder.dart';
import 'package:zFlutter_demo/entity/BannerEntity.dart';
import 'package:zFlutter_demo/http/Loading.dart';
import 'package:zFlutter_demo/http/UrlPath.dart';
import 'package:dio/dio.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

// void main() => runApp(new MusicHomeApp());

///轮播接口
void getHttp() async {
  try {
    Loading.show();
    Response response = await Dio().get(UrlPath.baseUrl + UrlPath.bannerPath);
    if (response != null) {
      Loading.dismiss();
      if(response.statusCode == 200){
        print(response.data.toString());
        print("response.data.toString()");
        // BannerEntity json = BannerEntity.fromJson(response.data.toString());
        // for (var item in json) {
        //   var model = BannerEntity.fromJson(item);
        //   print("model.banners.length");
        //   print(json.banners.length);
        // }
      }else{
        print(response.statusMessage);
      }
    }
  } catch (e) {
    Loading.dismiss();
    print(e);
  }
}

class MusicHomeApp extends StatelessWidget {
  final tp = [
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic01.1sucai.com%2F180115%2F330814-1P11516240997.jpg&refer=http%3A%2F%2Fpic01.1sucai.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654759337&t=7562e72802b6ac060fdf7bd9205d14a6",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1114%2F0G020114924%2F200G0114924-15-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1655000281&t=3b3b2d4d39c30d4c7841d9e9f676fbc3",
    "https://img2.baidu.com/it/u=1572613686,938558453&fm=253&fmt=auto&app=120&f=JPEG?w=640&h=400"
  ];

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
  ///轮播视图
  Widget bannerSection = Container(
    height: 200,
    child: new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          MusicHomeApp().tp[index],
          fit: BoxFit.fill,
        );
      },
      itemHeight: 200,
      itemCount: MusicHomeApp().tp.length,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
    ),
  );

  ///标签视图
  Widget tabSection = Container(
      height: 100,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        //交叉轴的布局方式，对于column来说就是水平方向的布局方式
        crossAxisAlignment: CrossAxisAlignment.center,
        //就是字child的垂直布局方向，向上还是向下
        verticalDirection: VerticalDirection.down,
        children: [
          GestureDetector(
            child: Text('标签一'),
            onTap: getHttp,
          ),
          Text('标签二'),
          Text('标签三'),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
      children: [
        bannerSection,
        SizedBox(
          height: 10.0,
        ),
        tabSection,
      ],
    ));
  }
}
