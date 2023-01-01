import 'package:observer/core/enums/stock_change_direction.dart';
import 'package:observer/core/stock/stock.dart';
import 'package:observer/core/subscriber/stock_subscriber.dart';

class GrowingStockSubs extends StockSubs {
  GrowingStockSubs() {
    stockTitle = 'Growing Stocks';
  }

  @override
  void update(Stock stock) {
    if (stock.changeDirection == StockChangeDirection.growing) {
      stockStreamController.add(stock);
    }
  }
}
