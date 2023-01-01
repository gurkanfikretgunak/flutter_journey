import 'dart:async';

import 'package:flutter/material.dart';
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
}
