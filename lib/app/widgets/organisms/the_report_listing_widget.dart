import 'package:fliper/app/core/models/report.dart';
import 'package:fliper/app/widgets/organisms/the_card_widget.dart';
import 'package:flutter/material.dart';




class TheReportListingWidget extends StatelessWidget {

  final List<Report> reports;

  TheReportListingWidget({this.reports});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: reports.length,
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return TheCardWidget(
          report: reports[index],
          height: 445,
          title: "Seu resumo"
        );
      }
    );
  }
}
