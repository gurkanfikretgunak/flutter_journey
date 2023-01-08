import 'package:factory_method/core/widgets/dialogs/base/base_dialog.dart';
import 'package:flutter/material.dart';

class DialogSelector extends StatelessWidget {
  final List<BaseDialog> customDialogList;
  final int selectedIndex;
  final ValueSetter<int?> onChanged;

  const DialogSelector({
    super.key,
    required this.customDialogList,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (var i = 0; i < customDialogList.length; i++)
          RadioListTile(
              title: Text(customDialogList[i].getTitle()),
              value: i,
              groupValue: selectedIndex,
              selected: i == selectedIndex,
              activeColor: Colors.black,
              controlAffinity: ListTileControlAffinity.platform,
              onChanged: onChanged),
      ],
    );
  }
}
