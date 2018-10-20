import 'dart:convert' show json;

class Data {

  int descendants;
  int id;
  int score;
  int time;
  String by;
  String title;
  String type;
  String url;
  List<int> kids;

  Data.fromParams({this.descendants, this.id, this.score, this.time, this.by, this.title, this.type, this.url, this.kids});

  factory Data(jsonStr) => jsonStr == null ? null : jsonStr is String ? new Data.fromJson(json.decode(jsonStr)) : new Data.fromJson(jsonStr);

  Data.fromJson(jsonRes) {
    descendants = jsonRes['descendants'];
    id = jsonRes['id'];
    score = jsonRes['score'];
    time = jsonRes['time'];
    by = jsonRes['by'];
    title = jsonRes['title'];
    type = jsonRes['type'];
    url = jsonRes['url'];
    kids = jsonRes['kids'] == null ? null : [];

    for (var kidsItem in kids == null ? [] : jsonRes['kids']){
      kids.add(kidsItem);
    }
  }

  @override
  String toString() {
    return '{"descendants": $descendants,"id": $id,"score": $score,"time": $time,"by": ${by != null?'${json.encode(by)}':'null'},"title": ${title != null?'${json.encode(title)}':'null'},"type": ${type != null?'${json.encode(type)}':'null'},"url": ${url != null?'${json.encode(url)}':'null'},"kids": $kids}';
  }
}

