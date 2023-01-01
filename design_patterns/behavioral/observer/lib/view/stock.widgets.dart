import 'package:flutter/material.dart';
import 'package:observer/core/model/stock_ticker_model.dart';
import 'package:observer/core/subscriber/base/stock_subscriber.dart';

class StockViewWidgets {
  Widget tickerTile(
      {StockTickerModel? stockTickerModel,
      int? index,
      ValueChanged<int>? onChanged}) {
    return Card(
      color: stockTickerModel!.subscribed ? Colors.black : Colors.white,
      child: InkWell(
        onTap: () => onChanged!(index!),
        child: Text(
          stockTickerModel.stockTicker.stockTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: stockTickerModel.subscribed ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget stockTickerSelection(
      {List<StockTickerModel>? stockTickers, ValueChanged<int>? onChanged}) {
    return Row(
      children: <Widget>[
        for (var i = 0; i < stockTickers!.length; i++)
          Expanded(
            child: tickerTile(
              stockTickerModel: stockTickers[i],
              index: i,
              onChanged: onChanged,
            ),
          )
      ],
    );
  }

  Widget stockSubsSelection(
      {List<StockSubs>? stockSubscriberList,
      int? selectedIndex,
      ValueSetter<int?>? onChanged}) {
    return Column(
      children: <Widget>[
        for (var i = 0; i < stockSubscriberList!.length; i++)
          RadioListTile(
            title: Text(stockSubscriberList[i].stockTitle),
            value: i,
            groupValue: selectedIndex,
            selected: i == selectedIndex,
            activeColor: Colors.black,
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: onChanged,
          ),
      ],
    );
  }
}
