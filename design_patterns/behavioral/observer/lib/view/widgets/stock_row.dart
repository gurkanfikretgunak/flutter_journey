import 'package:flutter/material.dart';
import 'package:observer/core/enums/stock_change_direction.dart';
import 'package:observer/core/enums/stock_ticker_acronyms.dart';
import 'package:observer/core/stock/stock.dart';

class StockRow extends StatelessWidget {
  final Stock stock;

  Color get color => stock.changeDirection == StockChangeDirection.growing
      ? Colors.green
      : Colors.red;

  const StockRow({
    super.key,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20 * 2,
          child: Text(
            stock.symbol.toShortString(),
            style: TextStyle(color: color),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 20 * 2,
          child: Text(
            stock.price.toString(),
            style: TextStyle(color: color),
            textAlign: TextAlign.end,
          ),
        ),
        Icon(
          stock.changeDirection == StockChangeDirection.growing
              ? Icons.arrow_upward
              : Icons.arrow_downward,
          color: color,
        ),
        Text(
          stock.changeAmount.toStringAsFixed(2),
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
