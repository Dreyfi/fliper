class Report {
  double cdi;
  double gain;
  double profitability;
  int total;

  Report({this.cdi, this.gain, this.profitability, this.total});

  factory Report.fromJson(Map json) {
    return Report(
      cdi: json['cdi'] == null ? 0 : json['cdi'],
      gain: json['gain'] == null ? 0 : json['gain'],
      profitability: json['profitability'] == null ? 0 : json['profitability'],
      total: json['total'] == null ? 0 : json['total'],
    );
  }
}

