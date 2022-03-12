import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stock_counter_app/widgets/templates/counter_template.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'amplifyconfiguration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify();
  runApp(const App());
}

class App extends HookWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isSignedIn = useState(false);
    final hubSubscription = useState<StreamSubscription?>(null);
    useEffect(
      () {
        void dispose() {
          if (hubSubscription.value != null) {
            hubSubscription.value?.cancel();
          }
        }

        Future.microtask(() async {
          final user = await Amplify.Auth.fetchAuthSession();
          if (user.isSignedIn) {
            isSignedIn.value = true;
          }
          hubSubscription.value =
              Amplify.Hub.listen([HubChannel.Auth], (hubEvent) {
            switch (hubEvent.eventName) {
              case 'SIGNED_IN':
                isSignedIn.value = true;
                break;
              case 'SIGNED_OUT':
                isSignedIn.value = false;
                break;
              case 'SESSION_EXPIRED':
                isSignedIn.value = false;
                break;
            }
          });
          Amplify.Hub.listen([HubChannel.DataStore], (hubEvent) {
            debugPrint(hubEvent.eventName);
          });
        });
        return dispose;
      },
      [],
    );
    return Authenticator(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.indigo, secondaryHeaderColor: Colors.amber),
        darkTheme: ThemeData.dark().copyWith(
            primaryColor: Colors.indigoAccent,
            secondaryHeaderColor: Colors.amberAccent),
        builder: Authenticator.builder(),
        home: const CounterTemplate(
          title: "STOCK COUNTER",
          stockCount: 0,
          limit: 20,
          itemPrice: 3300,
          taxRate: 0.065,
        ),
      ),
    );
  }
}

Future<void> _configureAmplify() async {
  Amplify.addPlugin(AmplifyAuthCognito());

  try {
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    debugPrint(
        'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
  }
}
