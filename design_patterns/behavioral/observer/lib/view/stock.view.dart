import 'dart:async';
import 'package:flutter/material.dart';
import 'package:observer/core/model/stock_ticker_model.dart';
import 'package:observer/core/stock/fake_stocks/asels_stock_ticker.dart';
import 'package:observer/core/stock/fake_stocks/froto_stock_ticker.dart';
import 'package:observer/core/stock/fake_stocks/thy_stock_ticker.dart';
import 'package:observer/core/stock/stock.dart';
import 'package:observer/core/subscriber/default_stock_subs.dart';
import 'package:observer/core/subscriber/falling_stock_subs.dart';
import 'package:observer/core/subscriber/growing_stock_subs.dart';
import 'package:observer/core/subscriber/base/stock_subscriber.dart';
import 'package:observer/view/stock.widgets.dart';
import 'package:observer/view/widgets/stock_row.dart';

class StockView extends StatefulWidget {
  const StockView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StockViewState createState() => _StockViewState();
}

class _StockViewState extends State<StockView> with StockViewWidgets {
  final _stockSubscriberList = <StockSubs>[
    DefaultStockSubs(),
    GrowingStockSubs(),
    FallingStockSubs()
  ];
  final _stockTickers = <StockTickerModel>[
    StockTickerModel(stockTicker: ThyStockTicker()),
    StockTickerModel(stockTicker: AselsStockTicker()),
    StockTickerModel(stockTicker: FrotoStockTicker()),
  ];
  final _stockEntries = <Stock>[];

  StreamSubscription<Stock>? _stockStreamSubscription;
  StockSubs _subscriber = DefaultStockSubs();
  int _selectedSubscriberIndex = 0;

  @override
  void initState() {
    super.initState();

    _stockStreamSubscription =
        _subscriber.stockStreamValue.listen(_onStockChange);
  }

  @override
  void dispose() {
    for (final ticker in _stockTickers) {
      ticker.stockTicker.stopTicker();
    }

    _stockStreamSubscription?.cancel();

    super.dispose();
  }

  void _onStockChange(Stock stock) {
    setState(() {
      _stockEntries.add(stock);
    });
  }

  void _setSelectedSubscriberIndex(int? index) {
    for (final ticker in _stockTickers) {
      if (ticker.subscribed) {
        ticker.toggleSubscribed();
        ticker.stockTicker.unsub(_subscriber);
      }
    }

    _stockStreamSubscription?.cancel();

    setState(() {
      _stockEntries.clear();
      _selectedSubscriberIndex = index!;
      _subscriber = _stockSubscriberList[_selectedSubscriberIndex];
      _stockStreamSubscription =
          _subscriber.stockStreamValue.listen(_onStockChange);
    });
  }

  void _toggleStockTickerSelection(int index) {
    final stockTickerModel = _stockTickers[index];
    final stockTicker = stockTickerModel.stockTicker;

    if (stockTickerModel.subscribed) {
      stockTicker.unsub(_subscriber);
    } else {
      stockTicker.sub(_subscriber);
    }

    setState(() {
      stockTickerModel.toggleSubscribed();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              stockSubsSelection(
                stockSubscriberList: _stockSubscriberList,
                selectedIndex: _selectedSubscriberIndex,
                onChanged: _setSelectedSubscriberIndex,
              ),
              stockTickerSelection(
                stockTickers: _stockTickers,
                onChanged: _toggleStockTickerSelection,
              ),
              Column(
                children: [
                  for (final stock in _stockEntries.reversed)
                    StockRow(stock: stock)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
