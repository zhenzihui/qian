import 'dart:convert';
/// id : 47708
/// state : 1
/// J_state : 2
/// short_name : "【10.9包邮】壹得利 香芋牛奶蛋酥卷 20包 500g"
/// goods_type : 2
/// goods_img : ""
/// goods_price : 17.9
/// goods_content : "*根根酥脆，轻咬香浓，微甜不腻，浓厚香醇！"
/// goods_recommend : ""
/// commissionShare : 12
/// goods_link : ""
/// discount_price : 7
/// discount_link : ""
/// today_num : 109
/// quota : 15
/// get_start_time : 1691458481000
/// get_end_time : 1691769598000
/// final_price : 10.9
/// historyPriceDay : 180
/// circle_content : "壹得利 香芋牛"
/// comments : 200
/// goodCommentsShare : 100
/// shop_id : 12273917
/// shop_name : "壹得利休闲零食旗舰店"
/// inOrderCount30Days : 100
/// imageList : "[]"
/// img_info : "["
/// goods_id : 10080640199564
/// subsidy_money : 0.27
/// subsidy_type : 2
/// subsidy_start_time : 1691424000
/// subsidy_end_time : 1691769599
/// add_time : 1691462162
/// subsidy_sku : "10080640199563,10080640199564,10080640199565,"
/// update_time : 1691650303
/// brand_id : 0
/// brandCode : 835968
/// brandName : "壹得利（YIDELI）"
/// owner : "p"
/// cid1 : 1320
/// cid1Name : "食品饮料"
/// cid2 : 1583
/// cid2Name : "休闲食品"
/// cid3 : 1595
/// cid3Name : "糕点/点心"
/// pingouPrice : null
/// pingouTmCount : null
/// pingouUrl : null
/// pingouStartTime : null
/// pingouEndTime : null
/// plusCommissionshare : 12
/// JID : 7351867

GoodsJson goodsJsonFromJson(String str) => GoodsJson.fromJson(json.decode(str));
String goodsJsonToJson(GoodsJson data) => json.encode(data.toJson());
class GoodsJson {
  GoodsJson({
      num? id,
      num? state, 
      num? jState, 
      String? shortName, 
      num? goodsType, 
      String? goodsImg, 
      num? goodsPrice, 
      String? goodsContent, 
      String? goodsRecommend, 
      num? commissionShare, 
      String? goodsLink, 
      num? discountPrice, 
      String? discountLink, 
      num? todayNum, 
      num? quota, 
      num? getStartTime, 
      num? getEndTime, 
      num? finalPrice, 
      num? historyPriceDay, 
      String? circleContent, 
      num? comments, 
      num? goodCommentsShare, 
      num? shopId, 
      String? shopName, 
      num? inOrderCount30Days, 
      String? imageList, 
      String? imgInfo, 
      num? goodsId, 
      num? subsidyMoney, 
      num? subsidyType, 
      num? subsidyStartTime, 
      num? subsidyEndTime, 
      num? addTime, 
      String? subsidySku, 
      num? updateTime, 
      num? brandId, 
      num? brandCode, 
      String? brandName, 
      String? owner, 
      num? cid1, 
      String? cid1Name, 
      num? cid2, 
      String? cid2Name, 
      num? cid3, 
      String? cid3Name, 
      dynamic pingouPrice, 
      dynamic pingouTmCount, 
      dynamic pingouUrl, 
      dynamic pingouStartTime, 
      dynamic pingouEndTime, 
      num? plusCommissionshare, 
      num? jid,}){
    _id = id;
    _state = state;
    _jState = jState;
    _shortName = shortName;
    _goodsType = goodsType;
    _goodsImg = goodsImg;
    _goodsPrice = goodsPrice;
    _goodsContent = goodsContent;
    _goodsRecommend = goodsRecommend;
    _commissionShare = commissionShare;
    _goodsLink = goodsLink;
    _discountPrice = discountPrice;
    _discountLink = discountLink;
    _todayNum = todayNum;
    _quota = quota;
    _getStartTime = getStartTime;
    _getEndTime = getEndTime;
    _finalPrice = finalPrice;
    _historyPriceDay = historyPriceDay;
    _circleContent = circleContent;
    _comments = comments;
    _goodCommentsShare = goodCommentsShare;
    _shopId = shopId;
    _shopName = shopName;
    _inOrderCount30Days = inOrderCount30Days;
    _imageList = imageList;
    _imgInfo = imgInfo;
    _goodsId = goodsId;
    _subsidyMoney = subsidyMoney;
    _subsidyType = subsidyType;
    _subsidyStartTime = subsidyStartTime;
    _subsidyEndTime = subsidyEndTime;
    _addTime = addTime;
    _subsidySku = subsidySku;
    _updateTime = updateTime;
    _brandId = brandId;
    _brandCode = brandCode;
    _brandName = brandName;
    _owner = owner;
    _cid1 = cid1;
    _cid1Name = cid1Name;
    _cid2 = cid2;
    _cid2Name = cid2Name;
    _cid3 = cid3;
    _cid3Name = cid3Name;
    _pingouPrice = pingouPrice;
    _pingouTmCount = pingouTmCount;
    _pingouUrl = pingouUrl;
    _pingouStartTime = pingouStartTime;
    _pingouEndTime = pingouEndTime;
    _plusCommissionshare = plusCommissionshare;
    _jid = jid;
}

  GoodsJson.fromJson(dynamic json) {
    _id = json['id'];
    _state = json['state'];
    _jState = json['J_state'];
    _shortName = json['short_name'];
    _goodsType = json['goods_type'];
    _goodsImg = json['goods_img'];
    _goodsPrice = json['goods_price'];
    _goodsContent = json['goods_content'];
    _goodsRecommend = json['goods_recommend'];
    _commissionShare = json['commissionShare'];
    _goodsLink = json['goods_link'];
    _discountPrice = json['discount_price'];
    _discountLink = json['discount_link'];
    _todayNum = json['today_num'];
    _quota = json['quota'];
    _getStartTime = json['get_start_time'];
    _getEndTime = json['get_end_time'];
    _finalPrice = json['final_price'];
    _historyPriceDay = json['historyPriceDay'];
    _circleContent = json['circle_content'];
    _comments = json['comments'];
    _goodCommentsShare = json['goodCommentsShare'];
    _shopId = json['shop_id'];
    _shopName = json['shop_name'];
    _inOrderCount30Days = json['inOrderCount30Days'];
    _imageList = json['imageList'];
    _imgInfo = json['img_info'];
    _goodsId = json['goods_id'];
    _subsidyMoney = json['subsidy_money'];
    _subsidyType = json['subsidy_type'];
    _subsidyStartTime = json['subsidy_start_time'];
    _subsidyEndTime = json['subsidy_end_time'];
    _addTime = json['add_time'];
    _subsidySku = json['subsidy_sku'];
    _updateTime = json['update_time'];
    _brandId = json['brand_id'];
    _brandCode = json['brandCode'];
    _brandName = json['brandName'];
    _owner = json['owner'];
    _cid1 = json['cid1'];
    _cid1Name = json['cid1Name'];
    _cid2 = json['cid2'];
    _cid2Name = json['cid2Name'];
    _cid3 = json['cid3'];
    _cid3Name = json['cid3Name'];
    _pingouPrice = json['pingouPrice'];
    _pingouTmCount = json['pingouTmCount'];
    _pingouUrl = json['pingouUrl'];
    _pingouStartTime = json['pingouStartTime'];
    _pingouEndTime = json['pingouEndTime'];
    _plusCommissionshare = json['plusCommissionshare'];
    _jid = json['JID'];
  }
  num? _id;
  num? _state;
  num? _jState;
  String? _shortName;
  num? _goodsType;
  String? _goodsImg;
  num? _goodsPrice;
  String? _goodsContent;
  String? _goodsRecommend;
  num? _commissionShare;
  String? _goodsLink;
  num? _discountPrice;
  String? _discountLink;
  num? _todayNum;
  num? _quota;
  num? _getStartTime;
  num? _getEndTime;
  num? _finalPrice;
  num? _historyPriceDay;
  String? _circleContent;
  num? _comments;
  num? _goodCommentsShare;
  num? _shopId;
  String? _shopName;
  num? _inOrderCount30Days;
  String? _imageList;
  String? _imgInfo;
  num? _goodsId;
  num? _subsidyMoney;
  num? _subsidyType;
  num? _subsidyStartTime;
  num? _subsidyEndTime;
  num? _addTime;
  String? _subsidySku;
  num? _updateTime;
  num? _brandId;
  num? _brandCode;
  String? _brandName;
  String? _owner;
  num? _cid1;
  String? _cid1Name;
  num? _cid2;
  String? _cid2Name;
  num? _cid3;
  String? _cid3Name;
  dynamic _pingouPrice;
  dynamic _pingouTmCount;
  dynamic _pingouUrl;
  dynamic _pingouStartTime;
  dynamic _pingouEndTime;
  num? _plusCommissionshare;
  num? _jid;
GoodsJson copyWith({  num? id,
  num? state,
  num? jState,
  String? shortName,
  num? goodsType,
  String? goodsImg,
  num? goodsPrice,
  String? goodsContent,
  String? goodsRecommend,
  num? commissionShare,
  String? goodsLink,
  num? discountPrice,
  String? discountLink,
  num? todayNum,
  num? quota,
  num? getStartTime,
  num? getEndTime,
  num? finalPrice,
  num? historyPriceDay,
  String? circleContent,
  num? comments,
  num? goodCommentsShare,
  num? shopId,
  String? shopName,
  num? inOrderCount30Days,
  String? imageList,
  String? imgInfo,
  num? goodsId,
  num? subsidyMoney,
  num? subsidyType,
  num? subsidyStartTime,
  num? subsidyEndTime,
  num? addTime,
  String? subsidySku,
  num? updateTime,
  num? brandId,
  num? brandCode,
  String? brandName,
  String? owner,
  num? cid1,
  String? cid1Name,
  num? cid2,
  String? cid2Name,
  num? cid3,
  String? cid3Name,
  dynamic pingouPrice,
  dynamic pingouTmCount,
  dynamic pingouUrl,
  dynamic pingouStartTime,
  dynamic pingouEndTime,
  num? plusCommissionshare,
  num? jid,
}) => GoodsJson(  id: id ?? _id,
  state: state ?? _state,
  jState: jState ?? _jState,
  shortName: shortName ?? _shortName,
  goodsType: goodsType ?? _goodsType,
  goodsImg: goodsImg ?? _goodsImg,
  goodsPrice: goodsPrice ?? _goodsPrice,
  goodsContent: goodsContent ?? _goodsContent,
  goodsRecommend: goodsRecommend ?? _goodsRecommend,
  commissionShare: commissionShare ?? _commissionShare,
  goodsLink: goodsLink ?? _goodsLink,
  discountPrice: discountPrice ?? _discountPrice,
  discountLink: discountLink ?? _discountLink,
  todayNum: todayNum ?? _todayNum,
  quota: quota ?? _quota,
  getStartTime: getStartTime ?? _getStartTime,
  getEndTime: getEndTime ?? _getEndTime,
  finalPrice: finalPrice ?? _finalPrice,
  historyPriceDay: historyPriceDay ?? _historyPriceDay,
  circleContent: circleContent ?? _circleContent,
  comments: comments ?? _comments,
  goodCommentsShare: goodCommentsShare ?? _goodCommentsShare,
  shopId: shopId ?? _shopId,
  shopName: shopName ?? _shopName,
  inOrderCount30Days: inOrderCount30Days ?? _inOrderCount30Days,
  imageList: imageList ?? _imageList,
  imgInfo: imgInfo ?? _imgInfo,
  goodsId: goodsId ?? _goodsId,
  subsidyMoney: subsidyMoney ?? _subsidyMoney,
  subsidyType: subsidyType ?? _subsidyType,
  subsidyStartTime: subsidyStartTime ?? _subsidyStartTime,
  subsidyEndTime: subsidyEndTime ?? _subsidyEndTime,
  addTime: addTime ?? _addTime,
  subsidySku: subsidySku ?? _subsidySku,
  updateTime: updateTime ?? _updateTime,
  brandId: brandId ?? _brandId,
  brandCode: brandCode ?? _brandCode,
  brandName: brandName ?? _brandName,
  owner: owner ?? _owner,
  cid1: cid1 ?? _cid1,
  cid1Name: cid1Name ?? _cid1Name,
  cid2: cid2 ?? _cid2,
  cid2Name: cid2Name ?? _cid2Name,
  cid3: cid3 ?? _cid3,
  cid3Name: cid3Name ?? _cid3Name,
  pingouPrice: pingouPrice ?? _pingouPrice,
  pingouTmCount: pingouTmCount ?? _pingouTmCount,
  pingouUrl: pingouUrl ?? _pingouUrl,
  pingouStartTime: pingouStartTime ?? _pingouStartTime,
  pingouEndTime: pingouEndTime ?? _pingouEndTime,
  plusCommissionshare: plusCommissionshare ?? _plusCommissionshare,
  jid: jid ?? _jid,
);
  num? get id => _id;
  num? get state => _state;
  num? get jState => _jState;
  String? get shortName => _shortName;
  num? get goodsType => _goodsType;
  String? get goodsImg => _goodsImg;
  num? get goodsPrice => _goodsPrice;
  String? get goodsContent => _goodsContent;
  String? get goodsRecommend => _goodsRecommend;
  num? get commissionShare => _commissionShare;
  String? get goodsLink => _goodsLink;
  num? get discountPrice => _discountPrice;
  String? get discountLink => _discountLink;
  num? get todayNum => _todayNum;
  num? get quota => _quota;
  num? get getStartTime => _getStartTime;
  num? get getEndTime => _getEndTime;
  num? get finalPrice => _finalPrice;
  num? get historyPriceDay => _historyPriceDay;
  String? get circleContent => _circleContent;
  num? get comments => _comments;
  num? get goodCommentsShare => _goodCommentsShare;
  num? get shopId => _shopId;
  String? get shopName => _shopName;
  num? get inOrderCount30Days => _inOrderCount30Days;
  String? get imageList => _imageList;
  String? get imgInfo => _imgInfo;
  num? get goodsId => _goodsId;
  num? get subsidyMoney => _subsidyMoney;
  num? get subsidyType => _subsidyType;
  num? get subsidyStartTime => _subsidyStartTime;
  num? get subsidyEndTime => _subsidyEndTime;
  num? get addTime => _addTime;
  String? get subsidySku => _subsidySku;
  num? get updateTime => _updateTime;
  num? get brandId => _brandId;
  num? get brandCode => _brandCode;
  String? get brandName => _brandName;
  String? get owner => _owner;
  num? get cid1 => _cid1;
  String? get cid1Name => _cid1Name;
  num? get cid2 => _cid2;
  String? get cid2Name => _cid2Name;
  num? get cid3 => _cid3;
  String? get cid3Name => _cid3Name;
  dynamic get pingouPrice => _pingouPrice;
  dynamic get pingouTmCount => _pingouTmCount;
  dynamic get pingouUrl => _pingouUrl;
  dynamic get pingouStartTime => _pingouStartTime;
  dynamic get pingouEndTime => _pingouEndTime;
  num? get plusCommissionshare => _plusCommissionshare;
  num? get jid => _jid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['state'] = _state;
    map['J_state'] = _jState;
    map['short_name'] = _shortName;
    map['goods_type'] = _goodsType;
    map['goods_img'] = _goodsImg;
    map['goods_price'] = _goodsPrice;
    map['goods_content'] = _goodsContent;
    map['goods_recommend'] = _goodsRecommend;
    map['commissionShare'] = _commissionShare;
    map['goods_link'] = _goodsLink;
    map['discount_price'] = _discountPrice;
    map['discount_link'] = _discountLink;
    map['today_num'] = _todayNum;
    map['quota'] = _quota;
    map['get_start_time'] = _getStartTime;
    map['get_end_time'] = _getEndTime;
    map['final_price'] = _finalPrice;
    map['historyPriceDay'] = _historyPriceDay;
    map['circle_content'] = _circleContent;
    map['comments'] = _comments;
    map['goodCommentsShare'] = _goodCommentsShare;
    map['shop_id'] = _shopId;
    map['shop_name'] = _shopName;
    map['inOrderCount30Days'] = _inOrderCount30Days;
    map['imageList'] = _imageList;
    map['img_info'] = _imgInfo;
    map['goods_id'] = _goodsId;
    map['subsidy_money'] = _subsidyMoney;
    map['subsidy_type'] = _subsidyType;
    map['subsidy_start_time'] = _subsidyStartTime;
    map['subsidy_end_time'] = _subsidyEndTime;
    map['add_time'] = _addTime;
    map['subsidy_sku'] = _subsidySku;
    map['update_time'] = _updateTime;
    map['brand_id'] = _brandId;
    map['brandCode'] = _brandCode;
    map['brandName'] = _brandName;
    map['owner'] = _owner;
    map['cid1'] = _cid1;
    map['cid1Name'] = _cid1Name;
    map['cid2'] = _cid2;
    map['cid2Name'] = _cid2Name;
    map['cid3'] = _cid3;
    map['cid3Name'] = _cid3Name;
    map['pingouPrice'] = _pingouPrice;
    map['pingouTmCount'] = _pingouTmCount;
    map['pingouUrl'] = _pingouUrl;
    map['pingouStartTime'] = _pingouStartTime;
    map['pingouEndTime'] = _pingouEndTime;
    map['plusCommissionshare'] = _plusCommissionshare;
    map['JID'] = _jid;
    return map;
  }


}