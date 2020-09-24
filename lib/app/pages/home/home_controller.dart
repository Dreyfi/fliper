import 'package:fliper/app/core/models/report.dart';
import 'package:fliper/app/shared/repositories/hasura_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController extends _HomeControllerBase with _$HomeController {
  HomeController(IHasuraRepository repository) : super(repository);
}

abstract class _HomeControllerBase with Store {
  
  _HomeControllerBase(this._repository) {
    this.init();
  }

  final IHasuraRepository _repository;

  @action
  init() {
    this._reportFuture = null;
    this.reportResult = null;
    this.errorMessage = null;
  }

  @action
  reset() {
    this.init();
  }

  @observable
  ObservableFuture<List<Report>> _reportFuture;

  @observable
  List<Report> reportResult;

  @observable
  String errorMessage;

  @computed
  States get state {
    if (_reportFuture != null && _reportFuture.status == FutureStatus.pending) {
      return States.loading;
    } else if (reportResult == null) {
      return States.initial;
    }

    return States.loaded;
  }

  @action
  getRerports() async {
    _reportFuture = ObservableFuture(_repository.getReports());

    reportResult = await _reportFuture;
    return reportResult;
  }  
}

enum States { initial, loading, loaded }
