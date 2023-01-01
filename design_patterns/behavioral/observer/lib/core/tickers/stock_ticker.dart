import 'dart:async';

import 'package:flutter/material.dart';
import 'package:observer/core/stock/stock.dart';

abstract class StockTicker {
  late final String stockTitle;
  late final Timer stockTimer;

  @protected
  Stock? stock;
}
