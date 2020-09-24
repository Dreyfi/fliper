import 'package:fliper/app/core/models/api_result.dart';
import 'package:fliper/app/constants.dart' as Constants;
import 'package:fliper/app/core/models/report.dart';
import 'package:hasura_connect/hasura_connect.dart';

abstract class IHasuraApiDataSource {
  Future<List<Report>> getReports();
}

class HasuraApiDataSource implements IHasuraApiDataSource{

  HasuraConnect _client;

  @override
  Future<List<Report>> getReports() async {
    try {

      var headers = {"x-hasura-admin-secret": Constants.X_HASURA_ADMIN_SECRET};
      String url = Constants.HASURA_URL;

      this._client = HasuraConnect(url, headers: headers);

      const String query = r'''
        query MyQuery {
          wealthSummary {
            cdi
            gain
            profitability
            total
          }
        }
      ''';

      final response = await this._client.query(query);   
      return ApiResult.fromJson(response).queryReport;

    } catch (err) {
      throw err;
    }    
  }  
}