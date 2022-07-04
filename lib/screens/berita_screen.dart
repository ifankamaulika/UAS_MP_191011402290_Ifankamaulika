import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resep/providers/berita_provider.dart';
import 'package:resep/screens/detail_berita_screen.dart';

class BeritaScreen extends StatefulWidget {
  const BeritaScreen({Key? key}) : super(key: key);

  @override
  State<BeritaScreen> createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artikel Berita'),
      ),
      body: Consumer<BeritaProvider>(
        builder: (context, BeritaProvider, child) {
          return ListView.builder(
            itemCount: BeritaProvider.beritaModel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailBeritaScreen(
                        title: BeritaProvider.beritaModel.data![index].title,
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            "${BeritaProvider.beritaModel.data![index].image}"),
                        Text(
                          "${BeritaProvider.beritaModel.data![index].title}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            "Porsi : ${BeritaProvider.beritaModel.data![index].title}"),
                        Text(
                            "Lama Pengerjaan : ${BeritaProvider.beritaModel.data![index].description}"),
                       
                      ],
                    ),
                  ),
                ),
              );
            },
            padding: const EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}
