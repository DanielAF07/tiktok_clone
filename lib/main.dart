import 'package:TokTik/config/theme/app_theme.dart';
import 'package:TokTik/presentation/providers/discover_provider.dart';
import 'package:TokTik/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage(),
        ),
      ],
      child: MaterialApp(
          title: 'TokTik',
          theme: AppTheme().getTheme(),
          debugShowCheckedModeBanner: false,
          home: const DiscoverScreen()),
    );
  }
}
