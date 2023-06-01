class Userlist {
  int? id;
  String? jobTitle;
  String? companyMame;
  String? jobType;
  String? location;
  String? date;


  Userlist(
    {this.id,
    this.jobTitle,
    this.companyMame,
    this.jobType,
    this.location,
    this.date});

  Userlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jobTitle = json['jobTitle'];
    companyMame = json['companyMame'];
    jobType = json['jobType'];
    location = json['location'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['jobTitle'] = this.jobTitle;
    data['companyMame'] = this.companyMame;
    data['jobType'] = this.jobType;
    data['location'] = this.location;
    data['date'] = this.date;
    return data;
  }
}

