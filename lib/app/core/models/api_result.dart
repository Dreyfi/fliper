import 'package:fliper/app/core/models/report.dart';

class ApiResult {
  List<Report> queryReport;

  ApiResult({this.queryReport});

  ApiResult.fromJson(Map<String, dynamic> json) {
    if(json['data']['wealthSummary'] != null) {
      queryReport = new List<Report>();
      json['data']['wealthSummary'].forEach((item) {
        queryReport.add(new Report.fromJson(item));
      });
    }
  }  
}