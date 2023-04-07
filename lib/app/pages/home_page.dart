import 'package:aula_provider/app/app_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final AppStore appStore = Provider.of<AppStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile<ThemeMode>(
              value: ThemeMode.system,
              groupValue: appStore.themeMode,
              title: const Text('System'),
              onChanged: (ThemeMode? value) {
                appStore.switchTheme(value);
              },
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              groupValue: appStore.themeMode,
              title: const Text('Light'),
              onChanged: appStore.switchTheme,
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode,
              title: const Text('Dark'),
              onChanged: appStore.switchTheme,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
