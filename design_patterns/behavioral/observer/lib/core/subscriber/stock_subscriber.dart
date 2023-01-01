import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:observer/core/stock/stock.dart';

abstract class StockSubs {
  late final String stockTitle;
  final id = faker.guid.guid();
  @protected
  final StreamController<Stock> stockStreamController =
      StreamController.broadcast();

  Stream<Stock> get stockStreamValue => stockStreamController.stream;

  void update(Stock stock);
}
