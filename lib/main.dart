import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik_flutter/config/theme/app_theme.dart';
import 'package:tok_tik_flutter/presentation/providers/discover_provider.dart';
import 'package:tok_tik_flutter/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider()..loadNextPage(),
        )
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
