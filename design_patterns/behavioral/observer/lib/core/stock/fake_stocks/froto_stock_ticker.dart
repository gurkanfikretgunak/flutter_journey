import 'dart:async';

import 'package:observer/core/enums/stock_ticker_acronyms.dart';
import 'package:observer/core/tickers/stock_ticker.dart';

class FrotoStockTicker extends StockTicker {
  FrotoStockTicker() {
    stockTitle = StockTickerAcronyms.FROTO.toShortString();
    stockTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      setStock(StockTickerAcronyms.FROTO, 60000, 64300);
      notifySubs();
    });
  }
}
