import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zFlutter_demo/common/LoginUtil.dart';

import 'entity/BannerEntity.dart';
import 'http/Loading.dart';
import 'http/UrlPath.dart';

void main() => runApp(new MyApp());

final tp = [
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic01.1sucai.com%2F180115%2F330814-1P11516240997.jpg&refer=http%3A%2F%2Fpic01.1sucai.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654759337&t=7562e72802b6ac060fdf7bd9205d14a6",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1114%2F0G020114924%2F200G0114924-15-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1655000281&t=3b3b2d4d39c30d4c7841d9e9f676fbc3",
  "https://img2.baidu.com/it/u=1572613686,938558453&fm=253&fmt=auto&app=120&f=JPEG?w=640&h=400"
];

var bannerUrl = [];

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // ignore: slash_for_doc_comments
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TOT',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routes: {
      //   "where": (context) => WhereApp(),
      // },
      home: HomePage(),
      builder: EasyLoading.init(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///轮播接口
  void getHttp() async {
    try {
      Loading.show();
      BaseOptions baseOptions = new BaseOptions(
          connectTimeout: 1000 * 10,
          receiveTimeout: 1000 * 5,
          responseType: ResponseType.plain);
      Dio dio = new Dio(baseOptions);
      Response response = await dio.get(UrlPath.baseUrl + UrlPath.bannerPath);
      if (response != null) {
        Loading.dismiss();
        if (response.statusCode == 200) {
          Map<String, dynamic> res2Json = jsonDecode(response.data);
          BannerEntity bannerEntity = BannerEntity.fromJson(res2Json);
          for (int i = 0; i < bannerEntity.banners.length; i++) {
            bannerUrl.add(bannerEntity.banners[i].imageUrl);
          }
        } else {
          print(response.statusMessage);
        }
      }
    } catch (e) {
      Loading.dismiss();
      print(e);
    }
  }

  ///轮播视图
  Widget bannerSection = Container(
    height: 200,
    child: new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          bannerUrl[index],
          fit: BoxFit.fill,
        );
      },
      itemHeight: 200,
      itemCount: bannerUrl.length,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
      // autoplay: true,
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
          GestureDetector(child: Text('标签一')),
          Text('标签二'),
          Text('标签三'),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    getHttp();
    if (bannerUrl.length == 0) {
      return new Container(
        child: Text('加载中……'),
      );
    } else {
      LogUtil.d(bannerUrl[0]);
      return new Scaffold(
        body: new ListView(
          children: [
            bannerSection,
            SizedBox(
              height: 10.0,
            ),
            tabSection,
          ],
        ),
      );
    }
  }
}
