import 'package:fliper/app/core/models/report.dart';
import 'package:fliper/app/shared/datasources/hasura_api_datasource.dart';

abstract class IHasuraRepository {
  Future<List<Report>> getReports();
}

class HasuraRepository implements IHasuraRepository{

  HasuraRepository(this.dataSource);

  IHasuraApiDataSource dataSource;

  @override
  Future<List<Report>> getReports() async {
    try {
      final result = await dataSource.getReports();
      return result;
    } catch(e) {
      print(e);
    }
  }

}

