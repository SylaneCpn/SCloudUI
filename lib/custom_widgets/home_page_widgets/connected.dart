import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:SCloudUI/custom_widgets/custom_avatar.dart';
import 'package:SCloudUI/data_structures/appstate.dart';

class ConnectedPage extends StatelessWidget {
  const ConnectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/icon/icon_white.png'),
        ),
        title: const Text('Utilisateur'),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Vous êtes connecté en temps que :\n',
                textAlign: TextAlign.center,
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomAvatar(state: state,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        state.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  state.disconnect();
                },
                child: Text("Se deconnecter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
