import 'dart:async';

import 'package:observer/core/enums/stock_ticker_acronyms.dart';
import 'package:observer/core/stock/stock.dart';
import 'package:observer/core/subscriber/stock_subscriber.dart';
import 'package:observer/core/tickers/stock_ticker.dart';

class DefaultStockTicker extends StockSubs {
  DefaultStockTicker() {
    stockTitle = 'All Stocks';
  }

  @override
  void update(Stock stock) {
    stockStreamController.add(stock);
  }
}
