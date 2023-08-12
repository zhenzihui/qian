import 'dart:convert';

/// link : "https://u.jd.com/2QW75xW"
/// link_content : ""
/// we_app_info : {"app_id":"wx91d27dbf599dff74","page_path":"pages/union/proxy/proxy?spreadUrl=https://u.jd.com/2QW75xW"}
/// is_coupon : 1
/// couponInfo : [{"beginTime":1691769600000,"discount":20,"endTime":1692028799000,"link":"https://coupon.m.jd.com/coupons/show.action?linkKey=AAROH_xIpeffAs_-naABEFoefyz-pdIlOWRoEN-INRz7bTZVxWU0jyMAfFqhRltAMHfv3Y2epVgtarzIuoqAQescAM6-uQ","num":20000,"platform":"全平台","quota":63,"remainNum":19716,"takeBeginTime":1691769600000,"takeEndTime":1692028798000,"yn":"1"}]
/// commissionInfo : {"commission":6.38,"commissionShare":10,"couponCommission":4.38,"endTime":1692028799000,"isLock":1,"plusCommissionShare":10,"startTime":1691769600000}
/// priceInfo : {"historyPriceDay":180,"lowestCouponPrice":43.8,"lowestPrice":63.8,"lowestPriceType":1,"price":63.8}
/// pinGouInfo : []
/// shopInfo : {"afsFactorScoreRankGrade":"高","afterServiceScore":"4.50","commentFactorScoreRankGrade":"高","logisticsFactorScoreRankGrade":"中","logisticsLvyueScore":"4.30","scoreRankRate":"91.28","shopId":29859,"shopLabel":"0","shopLevel":4.9,"shopName":"三只松鼠旗舰店","userEvaluateScore":"4.40"}
/// skuName : "三只松鼠坚果炒货量贩夏威夷果500g*2袋休闲零食炒货坚果WT 500g*2袋"
/// skuId : 10080385992451
/// owner : "p"
/// imageInfo : {"imageList":[{"url":"https://img14.360buyimg.com/pop/jfs/t1/113441/24/40437/105098/64ad1037F4e3bcb44/13202ba3e8d963ec.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/134716/25/32876/103288/6445edbbFb098e9cd/f2a5a1f3f680cc27.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/96745/16/40120/75576/6445edbcF4a550dcd/13f6ec048e490baa.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/217630/27/29018/57136/6445edbeFc465f2f6/dc71c7277a2ff3db.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/169945/34/31743/615533/643f8f6cF2beb2f51/424b1c61f2e99ea0.png"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/95653/25/36633/83050/6445edbfF887b90ba/bff77ebe21a74fae.jpg"}],"whiteImage":"https://img14.360buyimg.com/pop/jfs/t1/99818/27/36135/132179/6445edc4F136360c2/2b0d3fd0841fb19a.png"}

GoodsLink goodsLinkFromJson(String str) => GoodsLink.fromJson(json.decode(str));

String goodsLinkToJson(GoodsLink data) => json.encode(data.toJson());

class GoodsLink {
  GoodsLink({
    String? link,
    String? linkContent,
    WeAppInfo? weAppInfo,
    num? isCoupon,
    List<CouponInfo>? couponInfo,
    CommissionInfo? commissionInfo,
    PriceInfo? priceInfo,
    List<dynamic>? pinGouInfo,
    ShopInfo? shopInfo,
    String? skuName,
    num? skuId,
    String? owner,
    ImageInfo? imageInfo,
  }) {
    _link = link;
    _linkContent = linkContent;
    _weAppInfo = weAppInfo;
    _isCoupon = isCoupon;
    _couponInfo = couponInfo;
    _commissionInfo = commissionInfo;
    _priceInfo = priceInfo;
    _pinGouInfo = pinGouInfo;
    _shopInfo = shopInfo;
    _skuName = skuName;
    _skuId = skuId;
    _owner = owner;
    _imageInfo = imageInfo;
  }

  GoodsLink.fromJson(dynamic json) {
    _link = json['link'];
    _linkContent = json['link_content'];
    _weAppInfo = json['we_app_info'] != null
        ? WeAppInfo.fromJson(json['we_app_info'])
        : null;
    _isCoupon = json['is_coupon'];
    if (json['couponInfo'] != null) {
      _couponInfo = [];
      json['couponInfo'].forEach((v) {
        _couponInfo?.add(CouponInfo.fromJson(v));
      });
    }
    _commissionInfo = json['commissionInfo'] != null
        ? CommissionInfo.fromJson(json['commissionInfo'])
        : null;
    _priceInfo = json['priceInfo'] != null
        ? PriceInfo.fromJson(json['priceInfo'])
        : null;
    if (json['pinGouInfo'] != null) {
      _pinGouInfo = [];
    }
    _shopInfo =
        json['shopInfo'] != null ? ShopInfo.fromJson(json['shopInfo']) : null;
    _skuName = json['skuName'];
    _skuId = json['skuId'];
    _owner = json['owner'];
    _imageInfo = json['imageInfo'] != null
        ? ImageInfo.fromJson(json['imageInfo'])
        : null;
  }

  //推广链接
  String? _link;
  //推广文案
  String? _linkContent;
  WeAppInfo? _weAppInfo;
  num? _isCoupon;
  List<CouponInfo>? _couponInfo;
  CommissionInfo? _commissionInfo;
  PriceInfo? _priceInfo;
  List<dynamic>? _pinGouInfo;
  ShopInfo? _shopInfo;
  String? _skuName;
  num? _skuId;
  String? _owner;
  ImageInfo? _imageInfo;

  GoodsLink copyWith({
    String? link,
    String? linkContent,
    WeAppInfo? weAppInfo,
    num? isCoupon,
    List<CouponInfo>? couponInfo,
    CommissionInfo? commissionInfo,
    PriceInfo? priceInfo,
    List<dynamic>? pinGouInfo,
    ShopInfo? shopInfo,
    String? skuName,
    num? skuId,
    String? owner,
    ImageInfo? imageInfo,
  }) =>
      GoodsLink(
        link: link ?? _link,
        linkContent: linkContent ?? _linkContent,
        weAppInfo: weAppInfo ?? _weAppInfo,
        isCoupon: isCoupon ?? _isCoupon,
        couponInfo: couponInfo ?? _couponInfo,
        commissionInfo: commissionInfo ?? _commissionInfo,
        priceInfo: priceInfo ?? _priceInfo,
        pinGouInfo: pinGouInfo ?? _pinGouInfo,
        shopInfo: shopInfo ?? _shopInfo,
        skuName: skuName ?? _skuName,
        skuId: skuId ?? _skuId,
        owner: owner ?? _owner,
        imageInfo: imageInfo ?? _imageInfo,
      );

  String get link => _link??"";

  String? get linkContent => _linkContent;

  WeAppInfo? get weAppInfo => _weAppInfo;

  num? get isCoupon => _isCoupon;

  List<CouponInfo> get couponInfo => _couponInfo??[];

  CommissionInfo? get commissionInfo => _commissionInfo;

  PriceInfo? get priceInfo => _priceInfo;

  List<dynamic>? get pinGouInfo => _pinGouInfo;

  ShopInfo? get shopInfo => _shopInfo;

  String? get skuName => _skuName;

  num? get skuId => _skuId;

  String? get owner => _owner;

  ImageInfo? get imageInfo => _imageInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['link'] = _link;
    map['link_content'] = _linkContent;
    if (_weAppInfo != null) {
      map['we_app_info'] = _weAppInfo?.toJson();
    }
    map['is_coupon'] = _isCoupon;
    if (_couponInfo != null) {
      map['couponInfo'] = _couponInfo?.map((v) => v.toJson()).toList();
    }
    if (_commissionInfo != null) {
      map['commissionInfo'] = _commissionInfo?.toJson();
    }
    if (_priceInfo != null) {
      map['priceInfo'] = _priceInfo?.toJson();
    }
    if (_pinGouInfo != null) {
      map['pinGouInfo'] = _pinGouInfo?.map((v) => v.toJson()).toList();
    }
    if (_shopInfo != null) {
      map['shopInfo'] = _shopInfo?.toJson();
    }
    map['skuName'] = _skuName;
    map['skuId'] = _skuId;
    map['owner'] = _owner;
    if (_imageInfo != null) {
      map['imageInfo'] = _imageInfo?.toJson();
    }
    return map;
  }
}

/// imageList : [{"url":"https://img14.360buyimg.com/pop/jfs/t1/113441/24/40437/105098/64ad1037F4e3bcb44/13202ba3e8d963ec.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/134716/25/32876/103288/6445edbbFb098e9cd/f2a5a1f3f680cc27.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/96745/16/40120/75576/6445edbcF4a550dcd/13f6ec048e490baa.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/217630/27/29018/57136/6445edbeFc465f2f6/dc71c7277a2ff3db.jpg"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/169945/34/31743/615533/643f8f6cF2beb2f51/424b1c61f2e99ea0.png"},{"url":"https://img14.360buyimg.com/pop/jfs/t1/95653/25/36633/83050/6445edbfF887b90ba/bff77ebe21a74fae.jpg"}]
/// whiteImage : "https://img14.360buyimg.com/pop/jfs/t1/99818/27/36135/132179/6445edc4F136360c2/2b0d3fd0841fb19a.png"

ImageInfo imageInfoFromJson(String str) => ImageInfo.fromJson(json.decode(str));

String imageInfoToJson(ImageInfo data) => json.encode(data.toJson());

class ImageInfo {
  ImageInfo({
    List<ImageList>? imageList,
    String? whiteImage,
  }) {
    _imageList = imageList;
    _whiteImage = whiteImage;
  }

  ImageInfo.fromJson(dynamic json) {
    if (json['imageList'] != null) {
      _imageList = [];
      json['imageList'].forEach((v) {
        _imageList?.add(ImageList.fromJson(v));
      });
    }
    _whiteImage = json['whiteImage'];
  }

  List<ImageList>? _imageList;
  String? _whiteImage;

  ImageInfo copyWith({
    List<ImageList>? imageList,
    String? whiteImage,
  }) =>
      ImageInfo(
        imageList: imageList ?? _imageList,
        whiteImage: whiteImage ?? _whiteImage,
      );

  List<ImageList> get imageList => _imageList??[];

  String? get whiteImage => _whiteImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_imageList != null) {
      map['imageList'] = _imageList?.map((v) => v.toJson()).toList();
    }
    map['whiteImage'] = _whiteImage;
    return map;
  }
}

/// url : "https://img14.360buyimg.com/pop/jfs/t1/113441/24/40437/105098/64ad1037F4e3bcb44/13202ba3e8d963ec.jpg"

ImageList imageListFromJson(String str) => ImageList.fromJson(json.decode(str));

String imageListToJson(ImageList data) => json.encode(data.toJson());

class ImageList {
  ImageList({
    String? url,
  }) {
    _url = url;
  }

  ImageList.fromJson(dynamic json) {
    _url = json['url'];
  }

  String? _url;

  ImageList copyWith({
    String? url,
  }) =>
      ImageList(
        url: url ?? _url,
      );

  String get url => _url??"";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    return map;
  }
}

/// afsFactorScoreRankGrade : "高"
/// afterServiceScore : "4.50"
/// commentFactorScoreRankGrade : "高"
/// logisticsFactorScoreRankGrade : "中"
/// logisticsLvyueScore : "4.30"
/// scoreRankRate : "91.28"
/// shopId : 29859
/// shopLabel : "0"
/// shopLevel : 4.9
/// shopName : "三只松鼠旗舰店"
/// userEvaluateScore : "4.40"

ShopInfo shopInfoFromJson(String str) => ShopInfo.fromJson(json.decode(str));

String shopInfoToJson(ShopInfo data) => json.encode(data.toJson());

class ShopInfo {
  ShopInfo({
    String? afsFactorScoreRankGrade,
    String? afterServiceScore,
    String? commentFactorScoreRankGrade,
    String? logisticsFactorScoreRankGrade,
    String? logisticsLvyueScore,
    String? scoreRankRate,
    num? shopId,
    String? shopLabel,
    num? shopLevel,
    String? shopName,
    String? userEvaluateScore,
  }) {
    _afsFactorScoreRankGrade = afsFactorScoreRankGrade;
    _afterServiceScore = afterServiceScore;
    _commentFactorScoreRankGrade = commentFactorScoreRankGrade;
    _logisticsFactorScoreRankGrade = logisticsFactorScoreRankGrade;
    _logisticsLvyueScore = logisticsLvyueScore;
    _scoreRankRate = scoreRankRate;
    _shopId = shopId;
    _shopLabel = shopLabel;
    _shopLevel = shopLevel;
    _shopName = shopName;
    _userEvaluateScore = userEvaluateScore;
  }

  ShopInfo.fromJson(dynamic json) {
    _afsFactorScoreRankGrade = json['afsFactorScoreRankGrade'];
    _afterServiceScore = json['afterServiceScore'];
    _commentFactorScoreRankGrade = json['commentFactorScoreRankGrade'];
    _logisticsFactorScoreRankGrade = json['logisticsFactorScoreRankGrade'];
    _logisticsLvyueScore = json['logisticsLvyueScore'];
    _scoreRankRate = json['scoreRankRate'];
    _shopId = json['shopId'];
    _shopLabel = json['shopLabel'];
    _shopLevel = json['shopLevel'];
    _shopName = json['shopName'];
    _userEvaluateScore = json['userEvaluateScore'];
  }

  String? _afsFactorScoreRankGrade;
  String? _afterServiceScore;
  String? _commentFactorScoreRankGrade;
  String? _logisticsFactorScoreRankGrade;
  String? _logisticsLvyueScore;
  String? _scoreRankRate;
  num? _shopId;
  String? _shopLabel;
  num? _shopLevel;
  String? _shopName;
  String? _userEvaluateScore;

  ShopInfo copyWith({
    String? afsFactorScoreRankGrade,
    String? afterServiceScore,
    String? commentFactorScoreRankGrade,
    String? logisticsFactorScoreRankGrade,
    String? logisticsLvyueScore,
    String? scoreRankRate,
    num? shopId,
    String? shopLabel,
    num? shopLevel,
    String? shopName,
    String? userEvaluateScore,
  }) =>
      ShopInfo(
        afsFactorScoreRankGrade:
            afsFactorScoreRankGrade ?? _afsFactorScoreRankGrade,
        afterServiceScore: afterServiceScore ?? _afterServiceScore,
        commentFactorScoreRankGrade:
            commentFactorScoreRankGrade ?? _commentFactorScoreRankGrade,
        logisticsFactorScoreRankGrade:
            logisticsFactorScoreRankGrade ?? _logisticsFactorScoreRankGrade,
        logisticsLvyueScore: logisticsLvyueScore ?? _logisticsLvyueScore,
        scoreRankRate: scoreRankRate ?? _scoreRankRate,
        shopId: shopId ?? _shopId,
        shopLabel: shopLabel ?? _shopLabel,
        shopLevel: shopLevel ?? _shopLevel,
        shopName: shopName ?? _shopName,
        userEvaluateScore: userEvaluateScore ?? _userEvaluateScore,
      );

  String? get afsFactorScoreRankGrade => _afsFactorScoreRankGrade;

  String? get afterServiceScore => _afterServiceScore;

  String? get commentFactorScoreRankGrade => _commentFactorScoreRankGrade;

  String? get logisticsFactorScoreRankGrade => _logisticsFactorScoreRankGrade;

  String? get logisticsLvyueScore => _logisticsLvyueScore;

  String? get scoreRankRate => _scoreRankRate;

  num? get shopId => _shopId;

  String? get shopLabel => _shopLabel;

  num? get shopLevel => _shopLevel;

  String? get shopName => _shopName;

  String? get userEvaluateScore => _userEvaluateScore;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['afsFactorScoreRankGrade'] = _afsFactorScoreRankGrade;
    map['afterServiceScore'] = _afterServiceScore;
    map['commentFactorScoreRankGrade'] = _commentFactorScoreRankGrade;
    map['logisticsFactorScoreRankGrade'] = _logisticsFactorScoreRankGrade;
    map['logisticsLvyueScore'] = _logisticsLvyueScore;
    map['scoreRankRate'] = _scoreRankRate;
    map['shopId'] = _shopId;
    map['shopLabel'] = _shopLabel;
    map['shopLevel'] = _shopLevel;
    map['shopName'] = _shopName;
    map['userEvaluateScore'] = _userEvaluateScore;
    return map;
  }
}

/// historyPriceDay : 180
/// lowestCouponPrice : 43.8
/// lowestPrice : 63.8
/// lowestPriceType : 1
/// price : 63.8

PriceInfo priceInfoFromJson(String str) => PriceInfo.fromJson(json.decode(str));

String priceInfoToJson(PriceInfo data) => json.encode(data.toJson());

class PriceInfo {
  PriceInfo({
    num? historyPriceDay,
    num? lowestCouponPrice,
    num? lowestPrice,
    num? lowestPriceType,
    num? price,
  }) {
    _historyPriceDay = historyPriceDay;
    _lowestCouponPrice = lowestCouponPrice;
    _lowestPrice = lowestPrice;
    _lowestPriceType = lowestPriceType;
    _price = price;
  }

  PriceInfo.fromJson(dynamic json) {
    _historyPriceDay = json['historyPriceDay'];
    _lowestCouponPrice = json['lowestCouponPrice'];
    _lowestPrice = json['lowestPrice'];
    _lowestPriceType = json['lowestPriceType'];
    _price = json['price'];
  }

  num? _historyPriceDay;
  num? _lowestCouponPrice;
  num? _lowestPrice;
  num? _lowestPriceType;
  num? _price;

  PriceInfo copyWith({
    num? historyPriceDay,
    num? lowestCouponPrice,
    num? lowestPrice,
    num? lowestPriceType,
    num? price,
  }) =>
      PriceInfo(
        historyPriceDay: historyPriceDay ?? _historyPriceDay,
        lowestCouponPrice: lowestCouponPrice ?? _lowestCouponPrice,
        lowestPrice: lowestPrice ?? _lowestPrice,
        lowestPriceType: lowestPriceType ?? _lowestPriceType,
        price: price ?? _price,
      );

  String get historyPriceDay => _historyPriceDay.price();

  String get lowestCouponPrice => _lowestCouponPrice.price();

  String get lowestPrice => _lowestPrice.price();

  String get lowestPriceType => _lowestPriceType.price();

  String get price => _price.price();

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['historyPriceDay'] = _historyPriceDay;
    map['lowestCouponPrice'] = _lowestCouponPrice;
    map['lowestPrice'] = _lowestPrice;
    map['lowestPriceType'] = _lowestPriceType;
    map['price'] = _price;
    return map;
  }
}

/// commission : 6.38
/// commissionShare : 10
/// couponCommission : 4.38
/// endTime : 1692028799000
/// isLock : 1
/// plusCommissionShare : 10
/// startTime : 1691769600000

CommissionInfo commissionInfoFromJson(String str) =>
    CommissionInfo.fromJson(json.decode(str));

String commissionInfoToJson(CommissionInfo data) => json.encode(data.toJson());

class CommissionInfo {
  CommissionInfo({
    num? commission,
    num? commissionShare,
    num? couponCommission,
    num? endTime,
    num? isLock,
    num? plusCommissionShare,
    num? startTime,
  }) {
    _commission = commission;
    _commissionShare = commissionShare;
    _couponCommission = couponCommission;
    _endTime = endTime;
    _isLock = isLock;
    _plusCommissionShare = plusCommissionShare;
    _startTime = startTime;
  }

  CommissionInfo.fromJson(dynamic json) {
    _commission = json['commission'];
    _commissionShare = json['commissionShare'];
    _couponCommission = json['couponCommission'];
    _endTime = json['endTime'];
    _isLock = json['isLock'];
    _plusCommissionShare = json['plusCommissionShare'];
    _startTime = json['startTime'];
  }

  num? _commission;
  num? _commissionShare;
  num? _couponCommission;
  num? _endTime;
  num? _isLock;
  num? _plusCommissionShare;
  num? _startTime;

  CommissionInfo copyWith({
    num? commission,
    num? commissionShare,
    num? couponCommission,
    num? endTime,
    num? isLock,
    num? plusCommissionShare,
    num? startTime,
  }) =>
      CommissionInfo(
        commission: commission ?? _commission,
        commissionShare: commissionShare ?? _commissionShare,
        couponCommission: couponCommission ?? _couponCommission,
        endTime: endTime ?? _endTime,
        isLock: isLock ?? _isLock,
        plusCommissionShare: plusCommissionShare ?? _plusCommissionShare,
        startTime: startTime ?? _startTime,
      );

  num? get commission => _commission;

  num? get commissionShare => _commissionShare;

  num? get couponCommission => _couponCommission;

  num? get endTime => _endTime;

  num? get isLock => _isLock;

  num? get plusCommissionShare => _plusCommissionShare;

  num? get startTime => _startTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['commission'] = _commission;
    map['commissionShare'] = _commissionShare;
    map['couponCommission'] = _couponCommission;
    map['endTime'] = _endTime;
    map['isLock'] = _isLock;
    map['plusCommissionShare'] = _plusCommissionShare;
    map['startTime'] = _startTime;
    return map;
  }
}

/// beginTime : 1691769600000
/// discount : 20
/// endTime : 1692028799000
/// link : "https://coupon.m.jd.com/coupons/show.action?linkKey=AAROH_xIpeffAs_-naABEFoefyz-pdIlOWRoEN-INRz7bTZVxWU0jyMAfFqhRltAMHfv3Y2epVgtarzIuoqAQescAM6-uQ"
/// num : 20000
/// platform : "全平台"
/// quota : 63
/// remainNum : 19716
/// takeBeginTime : 1691769600000
/// takeEndTime : 1692028798000
/// yn : "1"

CouponInfo couponInfoFromJson(String str) =>
    CouponInfo.fromJson(json.decode(str));

String couponInfoToJson(CouponInfo data) => json.encode(data.toJson());

class CouponInfo {
  CouponInfo({
    num? beginTime,
    num? discount,
    num? endTime,
    String? link,
    num? number,
    String? platform,
    num? quota,
    num? remainNum,
    num? takeBeginTime,
    num? takeEndTime,
    String? yn,
  }) {
    _beginTime = beginTime;
    _discount = discount;
    _endTime = endTime;
    _link = link;
    _num = number;
    _platform = platform;
    _quota = quota;
    _remainNum = remainNum;
    _takeBeginTime = takeBeginTime;
    _takeEndTime = takeEndTime;
    _yn = yn;
  }

  CouponInfo.fromJson(dynamic json) {
    _beginTime = json['beginTime'];
    _discount = json['discount'];
    _endTime = json['endTime'];
    _link = json['link'];
    _num = json['num'];
    _platform = json['platform'];
    _quota = json['quota'];
    _remainNum = json['remainNum'];
    _takeBeginTime = json['takeBeginTime'];
    _takeEndTime = json['takeEndTime'];
    _yn = json['yn'];
  }

  num? _beginTime;
  num? _discount;
  num? _endTime;
  String? _link;
  num? _num;
  String? _platform;
  num? _quota;
  num? _remainNum;
  num? _takeBeginTime;
  num? _takeEndTime;
  String? _yn;

  CouponInfo copyWith({
    num? beginTime,
    num? discount,
    num? endTime,
    String? link,
    num? number,
    String? platform,
    num? quota,
    num? remainNum,
    num? takeBeginTime,
    num? takeEndTime,
    String? yn,
  }) =>
      CouponInfo(
        beginTime: beginTime ?? _beginTime,
        discount: discount ?? _discount,
        endTime: endTime ?? _endTime,
        link: link ?? _link,
        number: number ?? _num,
        platform: platform ?? _platform,
        quota: quota ?? _quota,
        remainNum: remainNum ?? _remainNum,
        takeBeginTime: takeBeginTime ?? _takeBeginTime,
        takeEndTime: takeEndTime ?? _takeEndTime,
        yn: yn ?? _yn,
      );

  DateTime get beginTime => _getLocalTime(_beginTime);

  String get discount => _discount.price();

  DateTime get endTime => _getLocalTime(_endTime);

  String? get link => _link;

  num? get number => _num;

  String? get platform => _platform;

  num? get quota => _quota;

  num? get remainNum => _remainNum;

  DateTime get takeBeginTime => _getLocalTime(_takeBeginTime);

  DateTime get takeEndTime => _getLocalTime(_takeEndTime);

  String? get yn => _yn;

  DateTime _getLocalTime(num? timeStamp) {
    return timeStamp == null
        ? DateTime.now()
        : DateTime.fromMillisecondsSinceEpoch(timeStamp as int).toLocal();
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['beginTime'] = _beginTime;
    map['discount'] = _discount;
    map['endTime'] = _endTime;
    map['link'] = _link;
    map['num'] = _num;
    map['platform'] = _platform;
    map['quota'] = _quota;
    map['remainNum'] = _remainNum;
    map['takeBeginTime'] = _takeBeginTime;
    map['takeEndTime'] = _takeEndTime;
    map['yn'] = _yn;
    return map;
  }
}

/// app_id : "wx91d27dbf599dff74"
/// page_path : "pages/union/proxy/proxy?spreadUrl=https://u.jd.com/2QW75xW"

WeAppInfo weAppInfoFromJson(String str) => WeAppInfo.fromJson(json.decode(str));

String weAppInfoToJson(WeAppInfo data) => json.encode(data.toJson());

class WeAppInfo {
  WeAppInfo({
    String? appId,
    String? pagePath,
  }) {
    _appId = appId;
    _pagePath = pagePath;
  }

  WeAppInfo.fromJson(dynamic json) {
    _appId = json['app_id'];
    _pagePath = json['page_path'];
  }

  String? _appId;
  String? _pagePath;

  WeAppInfo copyWith({
    String? appId,
    String? pagePath,
  }) =>
      WeAppInfo(
        appId: appId ?? _appId,
        pagePath: pagePath ?? _pagePath,
      );

  String? get appId => _appId;

  String? get pagePath => _pagePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['app_id'] = _appId;
    map['page_path'] = _pagePath;
    return map;
  }
}

extension on num? {
  String price() => this==null?"??":this!.toStringAsFixed(2);
}
