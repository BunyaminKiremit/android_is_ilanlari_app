import 'dart:convert';

JobsModel jobsModelFromMap(String str) => JobsModel.fromMap(json.decode(str));

String jobsModelToMap(JobsModel data) => json.encode(data.toMap());

class JobsModel {
    JobsModel({
        required this.id,
        required this.jobTitle,
        required this.companyMame,
        required this.jobType,
        required this.location,
        required this.date,
    });

    final int id;
    final String jobTitle;
    final String companyMame;
    final String jobType;
    final String location;
    final String date;

    factory JobsModel.fromMap(Map<String, dynamic> json) => JobsModel(
        id: json["id"],
        jobTitle: json["jobTitle"],
        companyMame: json["companyMame"],
        jobType: json["jobType"],
        location: json["location"],
        date: json["date"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "jobTitle": jobTitle,
        "companyMame": companyMame,
        "jobType": jobType,
        "location": location,
        "date": date,
    };
}
