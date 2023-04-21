class Userlist {
  int? id;
  String? DirName;
  String? DirMore;

  Userlist({
    this.id,
    this.DirName,
    this.DirMore,
  });

  Userlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    DirName = json['DirName'];
    DirMore = json['DirMore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['DirName'] = this.DirName;
    data['DirMore'] = this.DirMore;

    return data;
  }
}
