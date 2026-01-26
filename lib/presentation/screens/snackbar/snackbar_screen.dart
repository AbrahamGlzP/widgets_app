import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars and Dialogs')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Nostrud fugiat aliqua amet labore sunt dolore reprehenderit ad. Deserunt Lorem aute mollit ut officia in. Duis esse esse laborum ullamco ex. Eu tempor incididunt consectetur velit incididunt elit Lorem dolor cillum qui ipsum ullamco tempor. Enim adipisicing anim in esse.',
                    ),
                  ],
                );
              },
              child: Text('Used licences'),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text('Show dialog'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: Text('Show snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
          'Eiusmod sint magna nulla duis. Ex voluptate id sit commodo qui aute qui anim do quis fugiat cillum. Nisi duis do sunt voluptate aliqua amet ipsum. Laboris labore aute ipsum in est eiusmod eiusmod nisi. Eu Lorem consequat aliqua proident ex minim occaecat culpa in cillum proident eiusmod. Id ipsum id est sit do minim aliqua reprehenderit magna anim. Aliquip eiusmod consectetur exercitation ullamco magna adipisicing ullamco mollit ut labore minim.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Accept'),
          ),
        ],
      ),
    );
  }

  void showCustomSnackBar(BuildContext context) {
    final snackBarAction = SnackBarAction(label: 'Ok!', onPressed: () {});
    final snackBar = SnackBar(
      content: const Text('Hola Mundo'),
      action: snackBarAction,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
