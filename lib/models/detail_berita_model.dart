class BeritaDetailModel {
  List<Null> data;
  String message;
  int code;

  BeritaDetailModel({this.data, this.message, this.code});

  BeritaDetailModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Null>();
      json['data'].forEach((v) {
        data.add(new Null.fromJson(v));
      });
    }
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['code'] = this.code;
    return data;
  }
}
