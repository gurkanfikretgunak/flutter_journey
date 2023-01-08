import 'package:factory_method/core/widgets/dialogs/base/base_dialog.dart';
import 'package:factory_method/view/widgets/cupertino_dialog.dart';
import 'package:factory_method/view/widgets/dialog_selector.dart';
import 'package:factory_method/view/widgets/material_dialog.dart';
import 'package:flutter/material.dart';

class FactoryMethodView extends StatefulWidget {
  const FactoryMethodView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FactoryMethodViewState createState() => _FactoryMethodViewState();
}

class _FactoryMethodViewState extends State<FactoryMethodView> {
  final List<BaseDialog> customDialogList = [
    CupertinoAlertDialogWidget(),
    MaterialAlertDialogWidget(),
  ];

  int _selectedDialogIndex = 0;

  Future _showCustomDialog(BuildContext context) async {
    final selectedDialog = customDialogList[_selectedDialogIndex];

    await selectedDialog.show(context);
  }

  void _setSelectedDialogIndex(int? index) {
    setState(() {
      _selectedDialogIndex = index!;
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
              DialogSelector(
                customDialogList: customDialogList,
                selectedIndex: _selectedDialogIndex,
                onChanged: _setSelectedDialogIndex,
              ),
              ElevatedButton(
                onPressed: () => _showCustomDialog(context),
                child: const Text('Show Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
