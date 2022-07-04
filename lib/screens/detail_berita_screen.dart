import 'package:flutter/material.dart';

class DetailBeritaScreen extends StatefulWidget {
  final String? title;
  const DetailBeritaScreen({this.title, Key? key}) : super(key: key);

  @override
  State<DetailBeritaScreen> createState() => _DetailBeritaScreenState();
}

class _DetailBeritaScreenState extends State<DetailBeritaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
    );
  }
}
