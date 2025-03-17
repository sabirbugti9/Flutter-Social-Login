import 'package:coin_craft_ui/presentation/state/sign_up_screen_view_model.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignUpScreenViewModel(),
        ),
      ],
      child: const CoinCraft(),
    ),
  );
}
