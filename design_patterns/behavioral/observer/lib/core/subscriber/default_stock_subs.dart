import 'package:observer/core/stock/stock.dart';
import 'package:observer/core/subscriber/stock_subscriber.dart';

class DefaultStockSubs extends StockSubs {
  DefaultStockTicker() {
    stockTitle = 'All Stocks';
  }

  @override
  void update(Stock stock) {
    stockStreamController.add(stock);
  }
}
