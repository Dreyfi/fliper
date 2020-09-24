// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<States> _$stateComputed;

  @override
  States get state => (_$stateComputed ??= Computed<States>(() => super.state,
          name: '_HomeControllerBase.state'))
      .value;

  final _$_reportFutureAtom = Atom(name: '_HomeControllerBase._reportFuture');

  @override
  ObservableFuture<List<Report>> get _reportFuture {
    _$_reportFutureAtom.reportRead();
    return super._reportFuture;
  }

  @override
  set _reportFuture(ObservableFuture<List<Report>> value) {
    _$_reportFutureAtom.reportWrite(value, super._reportFuture, () {
      super._reportFuture = value;
    });
  }

  final _$reportResultAtom = Atom(name: '_HomeControllerBase.reportResult');

  @override
  List<Report> get reportResult {
    _$reportResultAtom.reportRead();
    return super.reportResult;
  }

  @override
  set reportResult(List<Report> value) {
    _$reportResultAtom.reportWrite(value, super.reportResult, () {
      super.reportResult = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_HomeControllerBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$getRerportsAsyncAction =
      AsyncAction('_HomeControllerBase.getRerports');

  @override
  Future getRerports() {
    return _$getRerportsAsyncAction.run(() => super.getRerports());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic init() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.init');
    try {
      return super.init();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reset() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.reset');
    try {
      return super.reset();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
reportResult: ${reportResult},
errorMessage: ${errorMessage},
state: ${state}
    ''';
  }
}
