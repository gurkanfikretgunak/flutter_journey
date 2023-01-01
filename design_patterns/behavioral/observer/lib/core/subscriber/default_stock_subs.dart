import 'package:observer/core/stock/stock.dart';
import 'package:observer/core/subscriber/base/stock_subscriber.dart';

class DefaultStockSubs extends StockSubs {
  DefaultStockSubs() {
    stockTitle = 'All Stocks';
  }

  @override
  void update(Stock stock) {
    stockStreamController.add(stock);
  }
}
