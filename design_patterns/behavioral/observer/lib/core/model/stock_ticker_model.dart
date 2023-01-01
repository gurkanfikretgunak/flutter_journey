import 'package:observer/core/tickers/stock_ticker.dart';

class StockTickerModel {
  final StockTicker stockTicker;

  bool subscribed = false;

  StockTickerModel({
    required this.stockTicker,
  });

  void toggleSubscribed() {
    subscribed = !subscribed;
  }
}
