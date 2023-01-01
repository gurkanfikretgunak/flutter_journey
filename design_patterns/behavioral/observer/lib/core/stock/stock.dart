import 'package:observer/core/enums/stock_change_direction.dart';
import 'package:observer/core/enums/stock_ticker_acronyms.dart';

class Stock {
  final StockTickerAcronyms symbol;
  final StockChangeDirection changeDirection;
  final double price;
  final double changeAmount;

  const Stock({
    required this.symbol,
    required this.changeDirection,
    required this.price,
    required this.changeAmount,
  });
}
