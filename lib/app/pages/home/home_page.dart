import 'package:fliper/app/core/models/report.dart';
import 'package:fliper/app/pages/home/home_controller.dart';
import 'package:fliper/app/shared/theme.dart';
import 'package:fliper/app/widgets/molecules/the_basic_structure/the_basic_structure_widget.dart';
import 'package:fliper/app/widgets/organisms/the_report_listing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeController homeController;
  List<Report> reports;

  @override
  void didChangeDependencies() async {
    homeController = Modular.get<HomeController>();
    reports = await homeController.getRerports();
    
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: TheBasicStructureWidget(
          background: Container(
            color: FliperTheme.backgroundColor,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,              
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Observer(
                builder: (_) {
                  switch(homeController.state) {
                    case States.loading:
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            Text("Loading..")
                          ],
                        );
                    default:
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TheReportListingWidget(
                              reports: reports ?? []
                            )
                          )
                        ],
                      );
                    }
                  },
                ),
              )              
            ],
          ),
        ),
      ),
    );
  }
}