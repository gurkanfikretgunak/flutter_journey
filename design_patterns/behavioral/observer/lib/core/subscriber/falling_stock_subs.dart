import 'package:observer/core/enums/stock_change_direction.dart';
import 'package:observer/core/stock/stock.dart';
import 'package:observer/core/subscriber/base/stock_subscriber.dart';

class FallingStockSubs extends StockSubs {
  FallingStockSubs() {
    stockTitle = 'Falling Stocks';
  }

  @override
  void update(Stock stock) {
    if (stock.changeDirection == StockChangeDirection.falling) {
      stockStreamController.add(stock);
    }
  }
}
