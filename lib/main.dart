import 'package:epic_track/src/di/locator.dart';
import 'package:epic_track/src/network/repository_impl.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  await setupLocaotr();

  var repository = RepositoryImpl();
  await repository.getFreeGameList();
  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp());
}
