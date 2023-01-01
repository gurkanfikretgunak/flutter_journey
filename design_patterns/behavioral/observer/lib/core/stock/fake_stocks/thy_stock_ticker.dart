import 'dart:async';

import 'package:observer/core/enums/stock_ticker_acronyms.dart';
import 'package:observer/core/ticker/stock_ticker.dart';

class ThyStockTicker extends StockTicker {
  ThyStockTicker() {
    stockTitle = StockTickerAcronyms.THY.toShortString();
    stockTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      setStock(StockTickerAcronyms.THY, 15000, 20000);
      notifySubs();
    });
  }
}
