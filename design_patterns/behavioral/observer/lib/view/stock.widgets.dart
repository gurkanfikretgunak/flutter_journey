import 'package:flutter/material.dart';
import 'package:observer/core/model/stock_ticker_model.dart';
import 'package:observer/core/subscriber/stock_subscriber.dart';

class StockViewWidgets {
  Widget stockTickerSelection(
      List<StockTickerModel> stockTickers, final ValueSetter<int> onChanged) {
    return Row(
      children: <Widget>[
        for (var i = 0; i < stockTickers.length; i++)
          Expanded(
            child: _TickerTile(
              stockTickerModel: stockTickers[i],
              index: i,
              onChanged: onChanged,
            ),
          )
      ],
    );
  }

  Widget stockSubsSelection(
    List<StockSubs> stockSubList,
    int selectedIndex,
    ValueSetter<int?> onChanged,
  ) {
    return Column(
      children: <Widget>[
        for (var i = 0; i < stockSubList.length; i++)
          RadioListTile(
            title: Text(stockSubList[i].stockTitle),
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

class _TickerTile extends StatelessWidget {
  final StockTickerModel stockTickerModel;
  final int index;
  final ValueChanged<int> onChanged;

  const _TickerTile({
    required this.stockTickerModel,
    required this.index,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: stockTickerModel.subscribed ? Colors.black : Colors.white,
      child: InkWell(
        onTap: () => onChanged(index),
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
}
