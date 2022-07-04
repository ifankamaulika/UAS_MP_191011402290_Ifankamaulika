import 'package:flutter/cupertino.dart';
import 'package:resep/models/detail_berita_model.dart';
import 'package:resep/models/berita_model.dart';
import 'package:resep/services/berita_service.dart';

class BeritaProvider extends ChangeNotifier {
  BeritaProvider() {
    showListBerita();
  }

  final BeritaService _BeritaService = BeritaService();
  BeritaModel beritaModel = BeritaModel();
  BeritaDetailModel detailBeritaModel = BeritaDetailModel();

  // Show List Resep Data
  showListBerita() async {
   beritaModel = await _BeritaService.getBerita();
    notifyListeners();
  }

  // Show Detail Resep Data
  showDetailBerita({String? inputKey}) async {
    detailBeritaModel = await _BeritaService.getDetailBerita(key: inputKey);
    notifyListeners();
  }
}