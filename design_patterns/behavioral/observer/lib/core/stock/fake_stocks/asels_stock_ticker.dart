import 'dart:async';

import 'package:observer/core/enums/stock_ticker_acronyms.dart';
import 'package:observer/core/tickers/stock_ticker.dart';

class AselsStockTicker extends StockTicker {
  AselsStockTicker() {
    stockTitle = StockTickerAcronyms.ASELS.toShortString();
    stockTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      setStock(StockTickerAcronyms.THY, 24000, 26000);
      notifySubs();
    });
  }
}
