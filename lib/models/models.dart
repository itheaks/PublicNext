class HomeData {
  final String uid;
  final String nid;
  final String langCode;
  final int tv;
  final String city;

  HomeData({
    required this.uid,
    required this.nid,
    required this.langCode,
    required this.tv,
    required this.city,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return HomeData(
      uid: json['uid'],
      nid: json['nid'],
      langCode: json['lang_code'],
      tv: json['tv'],
      city: json['city'],
    );
  }
}
