import 'package:fliper/app/shared/datasources/hasura_api_datasource.dart';
import 'package:fliper/app/shared/repositories/hasura_repository.dart';

import 'pages/home/home_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fliper/app/pages/home/home_page.dart';
import 'package:fliper/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(HasuraRepository(HasuraApiDataSource()))),
      ];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter('/', child: (_, args) => HomePage())];

  @override
  Widget get bootstrap => AppWidget();
}
