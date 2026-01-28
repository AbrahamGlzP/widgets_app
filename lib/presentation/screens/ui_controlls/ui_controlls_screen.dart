import 'package:flutter/material.dart';

class UiControllsScreen extends StatelessWidget {
  static const name = 'ui_controlls_screen';
  const UiControllsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: _UiControlsListView(),
    );
  }
}

class _UiControlsListView extends StatelessWidget {
  const _UiControlsListView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Aditional controls'),
          value: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
