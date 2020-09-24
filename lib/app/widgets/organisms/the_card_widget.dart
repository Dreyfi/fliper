import 'package:fliper/app/core/models/report.dart';
import 'package:fliper/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class TheCardWidget extends StatelessWidget {

  final Report report;
  final double width;
  final double height;
  final String title;
  final Color color;
  final Function onTap;

  TheCardWidget({
    this.width,
    @required this.height,
    @required this.title, 
    this.color, 
    this.onTap, 
    @required this.report
  })
  : assert(report != null);

  final MoneyFormatterSettings formatterSettings = MoneyFormatterSettings(
        fractionDigits: 2,
        symbol: 'R\$',
        compactFormatType: CompactFormatType.short,
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
    );

  final MoneyFormatterSettings formatterProfitability = MoneyFormatterSettings(
    symbol: '%',
    decimalSeparator: ',',
    fractionDigits: 3,
    symbolAndNumberSeparator: '',
  );

  final MoneyFormatterSettings formatterCDI = MoneyFormatterSettings(
    symbol: '%',
    decimalSeparator: ',',
    fractionDigits: 2,
    symbolAndNumberSeparator: '',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Card(
        color: color,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),        
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title, style: FliperTheme.headline1,),
                  SizedBox(width: 5,),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: FliperTheme.textColor,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),              
              SizedBox(height: 40,),
              Column(
                children: [
                  Text("Valor investido", style: FliperTheme.headline2),
                  SizedBox(height: 10,),
                  Text(FlutterMoneyFormatter(
                      amount: double.parse(report.total.toString()),
                      settings: formatterSettings
                  ).output.symbolOnLeft, style: FliperTheme.headline1),                  
                ],
              ),
              SizedBox(height: 40,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rentabilidade/mês", style: FliperTheme.headline2),
                      Text(FlutterMoneyFormatter(
                          amount: ((report.profitability * 1000).truncateToDouble()/1000),
                          settings: formatterProfitability
                        ).output.symbolOnRight, style: FliperTheme.headline1.copyWith(fontSize: 20)),                      
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("CDI", style: FliperTheme.headline2),
                      Text(FlutterMoneyFormatter(
                          amount: ((report.cdi * 100).truncateToDouble()/100),
                          settings: formatterCDI
                        ).output.symbolOnRight, style: FliperTheme.headline1.copyWith(fontSize: 20)),                      
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ganho/mês", style: FliperTheme.headline2),
                      Text(
                        FlutterMoneyFormatter(
                          amount: double.parse(report.gain.toString()),
                          settings: formatterSettings
                        ).output.symbolOnLeft
                        , style: FliperTheme.headline1.copyWith(fontSize: 20))
                    ],
                  ),
                  SizedBox(height: 30),
                  Divider(
                    height: 2,
                    color: FliperTheme.textColor
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        color: FliperTheme.accentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: FliperTheme.primaryColor, width: 2),
                        ),
                        child: Text("VER MAIS", style: FliperTheme.headline1.copyWith(fontSize: 18),),
                        onPressed: () {},
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}