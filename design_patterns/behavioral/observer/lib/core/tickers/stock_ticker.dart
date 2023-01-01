import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:observer/core/enums/stock_change_direction.dart';
import 'package:observer/core/enums/stock_ticker_acronyms.dart';
import 'package:observer/core/stock/stock.dart';
import 'package:observer/core/subscriber/stock_subscriber.dart';

abstract class StockTicker {
  late final String stockTitle;
  late final Timer stockTimer;

  @protected
  Stock? stock;

  final _subs = <StockSubs>[];

  void sub(StockSubs subscriber) => _subs.add(subscriber);

  void unsub(StockSubs subscriber) =>
      _subs.removeWhere((s) => s.id == subscriber.id);
  void notifySubs() {
    for (final subs in _subs) {
      subs.update(stock!);
    }
  }

  void setStock(StockTickerAcronyms stockTickerAcronyms, int min, int max) {
    final lastStock = stock;
    final fakePrice = faker.randomGenerator.integer(max, min: min) / 200;
    final changeAmount = lastStock != null ? fakePrice - lastStock.price : 0.0;

    stock = Stock(
      symbol: stockTickerAcronyms,
      changeDirection: changeAmount > 0
          ? StockChangeDirection.growing
          : StockChangeDirection.falling,
      price: fakePrice,
      changeAmount: changeAmount,
    );
  }
}
