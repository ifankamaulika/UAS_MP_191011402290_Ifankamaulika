import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resep/providers/berita_provider.dart';
import 'package:resep/screens/berita_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BeritaProvider>(
          create: (context) => BeritaProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Berita',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BeritaScreen(),
      ),
    );
  }
}
