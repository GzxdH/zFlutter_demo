/// banners : [{"imageUrl":"http://p1.music.126.net/EDoWZxBzTKfpuu36jpHTmQ==/109951167402655597.jpg","targetId":1945355027,"adid":null,"targetType":1,"titleColor":"red","typeTitle":"新歌首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"1945355027","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4332005.1723829039.null"},{"imageUrl":"http://p1.music.126.net/IFaUOMeRo9JPZ8VtPadoSw==/109951167402712325.jpg","targetId":144549544,"adid":null,"targetType":10,"titleColor":"red","typeTitle":"新碟首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"144549544","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4332006.1723894236.null"},{"imageUrl":"http://p1.music.126.net/4OdCppY0ZCEvRIH6K510Tg==/109951167402710116.jpg","targetId":1944798036,"adid":null,"targetType":1,"titleColor":"red","typeTitle":"新歌首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"1944798036","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4243143.1723888494.null"},{"imageUrl":"http://p1.music.126.net/WAyMFb8YctxdL-QWRD78wA==/109951167402671403.jpg","targetId":144554214,"adid":null,"targetType":10,"titleColor":"red","typeTitle":"新碟首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"144554214","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4332008.1723867391.null"},{"imageUrl":"http://p1.music.126.net/aS4wX3_XB2VXQbWCjQ5p9A==/109951167402856766.jpg","targetId":1946477711,"adid":null,"targetType":1,"titleColor":"red","typeTitle":"新歌首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"1946477711","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4251206.1723711830.null"},{"imageUrl":"http://p1.music.126.net/hfBCTXy9_77u8fk81P7bKA==/109951167402683917.jpg","targetId":1946440751,"adid":null,"targetType":1,"titleColor":"red","typeTitle":"新歌首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"1946440751","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4332009.1723861594.null"},{"imageUrl":"http://p1.music.126.net/S8I2cW3Q3ukD9zfuKOQKsA==/109951167402699195.jpg","targetId":143628994,"adid":null,"targetType":10,"titleColor":"red","typeTitle":"新碟首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"143628994","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4332010.1723681883.null"},{"imageUrl":"http://p1.music.126.net/1LSuGtXA3DPh-vDHw8AT9A==/109951167404288623.jpg","targetId":1946539008,"adid":null,"targetType":1,"titleColor":"red","typeTitle":"新歌首发","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"1946539008","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4269154.1723712794.null"},{"imageUrl":"http://p1.music.126.net/vYvrwTex_eemglq6UleQ1A==/109951167402718485.jpg","targetId":2767891,"adid":null,"targetType":10,"titleColor":"red","typeTitle":"编辑推荐","url":null,"exclusive":false,"monitorImpress":null,"monitorClick":null,"monitorType":null,"monitorImpressList":null,"monitorClickList":null,"monitorBlackList":null,"extMonitor":null,"extMonitorInfo":null,"adSource":null,"adLocation":null,"adDispatchJson":null,"encodeId":"2767891","program":null,"event":null,"video":null,"song":null,"scm":"1.music-homepage.homepage_banner_force.banner.4332011.1723771409.null"}]
/// code : 200

class BannerEntity {
  BannerEntity({
    List<Banners> banners,
    int code,
  }) {
    _banners = banners;
    _code = code;
  }

  BannerEntity.fromJson(dynamic json) {
    if (json['banners'] != null) {
      _banners = [];
      json['banners'].forEach((v) {
        _banners.add(Banners.fromJson(v));
      });
    }
    _code = json['code'];
  }

  List<Banners> _banners;
  int _code;

  BannerEntity copyWith({
    List<Banners> banners,
    int code,
  }) =>
      BannerEntity(
        banners: banners ?? _banners,
        code: code ?? _code,
      );

  List<Banners> get banners => _banners;

  int get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_banners != null) {
      map['banners'] = _banners.map((v) => v.toJson()).toList();
    }
    map['code'] = _code;
    return map;
  }
}

/// imageUrl : "http://p1.music.126.net/EDoWZxBzTKfpuu36jpHTmQ==/109951167402655597.jpg"
/// targetId : 1945355027
/// adid : null
/// targetType : 1
/// titleColor : "red"
/// typeTitle : "新歌首发"
/// url : null
/// exclusive : false
/// monitorImpress : null
/// monitorClick : null
/// monitorType : null
/// monitorImpressList : null
/// monitorClickList : null
/// monitorBlackList : null
/// extMonitor : null
/// extMonitorInfo : null
/// adSource : null
/// adLocation : null
/// adDispatchJson : null
/// encodeId : "1945355027"
/// program : null
/// event : null
/// video : null
/// song : null
/// scm : "1.music-homepage.homepage_banner_force.banner.4332005.1723829039.null"

class Banners {
  Banners({
    String imageUrl,
    int targetId,
    dynamic adid,
    int targetType,
    String titleColor,
    String typeTitle,
    dynamic url,
    bool exclusive,
    dynamic monitorImpress,
    dynamic monitorClick,
    dynamic monitorType,
    dynamic monitorImpressList,
    dynamic monitorClickList,
    dynamic monitorBlackList,
    dynamic extMonitor,
    dynamic extMonitorInfo,
    dynamic adSource,
    dynamic adLocation,
    dynamic adDispatchJson,
    String encodeId,
    dynamic program,
    dynamic event,
    dynamic video,
    dynamic song,
    String scm,
  }) {
    _imageUrl = imageUrl;
    _targetId = targetId;
    _adid = adid;
    _targetType = targetType;
    _titleColor = titleColor;
    _typeTitle = typeTitle;
    _url = url;
    _exclusive = exclusive;
    _monitorImpress = monitorImpress;
    _monitorClick = monitorClick;
    _monitorType = monitorType;
    _monitorImpressList = monitorImpressList;
    _monitorClickList = monitorClickList;
    _monitorBlackList = monitorBlackList;
    _extMonitor = extMonitor;
    _extMonitorInfo = extMonitorInfo;
    _adSource = adSource;
    _adLocation = adLocation;
    _adDispatchJson = adDispatchJson;
    _encodeId = encodeId;
    _program = program;
    _event = event;
    _video = video;
    _song = song;
    _scm = scm;
  }

  Banners.fromJson(dynamic json) {
    _imageUrl = json['imageUrl'];
    _targetId = json['targetId'];
    _adid = json['adid'];
    _targetType = json['targetType'];
    _titleColor = json['titleColor'];
    _typeTitle = json['typeTitle'];
    _url = json['url'];
    _exclusive = json['exclusive'];
    _monitorImpress = json['monitorImpress'];
    _monitorClick = json['monitorClick'];
    _monitorType = json['monitorType'];
    _monitorImpressList = json['monitorImpressList'];
    _monitorClickList = json['monitorClickList'];
    _monitorBlackList = json['monitorBlackList'];
    _extMonitor = json['extMonitor'];
    _extMonitorInfo = json['extMonitorInfo'];
    _adSource = json['adSource'];
    _adLocation = json['adLocation'];
    _adDispatchJson = json['adDispatchJson'];
    _encodeId = json['encodeId'];
    _program = json['program'];
    _event = json['event'];
    _video = json['video'];
    _song = json['song'];
    _scm = json['scm'];
  }

  String _imageUrl;
  int _targetId;
  dynamic _adid;
  int _targetType;
  String _titleColor;
  String _typeTitle;
  dynamic _url;
  bool _exclusive;
  dynamic _monitorImpress;
  dynamic _monitorClick;
  dynamic _monitorType;
  dynamic _monitorImpressList;
  dynamic _monitorClickList;
  dynamic _monitorBlackList;
  dynamic _extMonitor;
  dynamic _extMonitorInfo;
  dynamic _adSource;
  dynamic _adLocation;
  dynamic _adDispatchJson;
  String _encodeId;
  dynamic _program;
  dynamic _event;
  dynamic _video;
  dynamic _song;
  String _scm;

  Banners copyWith({
    String imageUrl,
    int targetId,
    dynamic adid,
    int targetType,
    String titleColor,
    String typeTitle,
    dynamic url,
    bool exclusive,
    dynamic monitorImpress,
    dynamic monitorClick,
    dynamic monitorType,
    dynamic monitorImpressList,
    dynamic monitorClickList,
    dynamic monitorBlackList,
    dynamic extMonitor,
    dynamic extMonitorInfo,
    dynamic adSource,
    dynamic adLocation,
    dynamic adDispatchJson,
    String encodeId,
    dynamic program,
    dynamic event,
    dynamic video,
    dynamic song,
    String scm,
  }) =>
      Banners(
        imageUrl: imageUrl ?? _imageUrl,
        targetId: targetId ?? _targetId,
        adid: adid ?? _adid,
        targetType: targetType ?? _targetType,
        titleColor: titleColor ?? _titleColor,
        typeTitle: typeTitle ?? _typeTitle,
        url: url ?? _url,
        exclusive: exclusive ?? _exclusive,
        monitorImpress: monitorImpress ?? _monitorImpress,
        monitorClick: monitorClick ?? _monitorClick,
        monitorType: monitorType ?? _monitorType,
        monitorImpressList: monitorImpressList ?? _monitorImpressList,
        monitorClickList: monitorClickList ?? _monitorClickList,
        monitorBlackList: monitorBlackList ?? _monitorBlackList,
        extMonitor: extMonitor ?? _extMonitor,
        extMonitorInfo: extMonitorInfo ?? _extMonitorInfo,
        adSource: adSource ?? _adSource,
        adLocation: adLocation ?? _adLocation,
        adDispatchJson: adDispatchJson ?? _adDispatchJson,
        encodeId: encodeId ?? _encodeId,
        program: program ?? _program,
        event: event ?? _event,
        video: video ?? _video,
        song: song ?? _song,
        scm: scm ?? _scm,
      );

  String get imageUrl => _imageUrl;

  int get targetId => _targetId;

  dynamic get adid => _adid;

  int get targetType => _targetType;

  String get titleColor => _titleColor;

  String get typeTitle => _typeTitle;

  dynamic get url => _url;

  bool get exclusive => _exclusive;

  dynamic get monitorImpress => _monitorImpress;

  dynamic get monitorClick => _monitorClick;

  dynamic get monitorType => _monitorType;

  dynamic get monitorImpressList => _monitorImpressList;

  dynamic get monitorClickList => _monitorClickList;

  dynamic get monitorBlackList => _monitorBlackList;

  dynamic get extMonitor => _extMonitor;

  dynamic get extMonitorInfo => _extMonitorInfo;

  dynamic get adSource => _adSource;

  dynamic get adLocation => _adLocation;

  dynamic get adDispatchJson => _adDispatchJson;

  String get encodeId => _encodeId;

  dynamic get program => _program;

  dynamic get event => _event;

  dynamic get video => _video;

  dynamic get song => _song;

  String get scm => _scm;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['imageUrl'] = _imageUrl;
    map['targetId'] = _targetId;
    map['adid'] = _adid;
    map['targetType'] = _targetType;
    map['titleColor'] = _titleColor;
    map['typeTitle'] = _typeTitle;
    map['url'] = _url;
    map['exclusive'] = _exclusive;
    map['monitorImpress'] = _monitorImpress;
    map['monitorClick'] = _monitorClick;
    map['monitorType'] = _monitorType;
    map['monitorImpressList'] = _monitorImpressList;
    map['monitorClickList'] = _monitorClickList;
    map['monitorBlackList'] = _monitorBlackList;
    map['extMonitor'] = _extMonitor;
    map['extMonitorInfo'] = _extMonitorInfo;
    map['adSource'] = _adSource;
    map['adLocation'] = _adLocation;
    map['adDispatchJson'] = _adDispatchJson;
    map['encodeId'] = _encodeId;
    map['program'] = _program;
    map['event'] = _event;
    map['video'] = _video;
    map['song'] = _song;
    map['scm'] = _scm;
    return map;
  }
}
