enum StockTickerAcronyms {
  THY,
  ASELS,
  FROTO,
}

extension StockTickerSymbolExtension on StockTickerAcronyms {
  String toShortString() => toString().split('.').last;
}
