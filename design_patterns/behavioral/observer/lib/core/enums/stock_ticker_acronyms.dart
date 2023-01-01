enum StockTickerAcronyms {
  GME,
  GOOGL,
  TSLA,
}

extension StockTickerSymbolExtension on StockTickerAcronyms {
  String toShortString() => toString().split('.').last;
}
