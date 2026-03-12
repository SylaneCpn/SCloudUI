import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:scloud_ui/custom_widgets/home_page_widgets/connected.dart';
import 'package:scloud_ui/custom_widgets/home_page_widgets/diconnected.dart';
import 'package:scloud_ui/data_structures/appstate.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    var state = context.watch<AppState>();

    return state.isConnected ? ConnectedPage() : Diconnected();
  }
}
