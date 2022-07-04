import 'package:dio/dio.dart';
import 'package:resep/models/detail_berita_model.dart';
import 'package:resep/models/berita_model.dart';

class BeritaService {
  // Get List Resep
  Future<BeritaModel> getBerita() async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles');
    return BeritaModel.fromJson(response.data);
  }

  // Get Detail Resep
  Future<BeritaDetailModel> getDetailBerita({String? key}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/id_artikel');
    return BeritaDetailModel.fromJson(response.data);
  }
}
