import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/barang.dart';

class BarangService {
  static const String baseUrl = "http://localhost:8000/api/barang";

  static Future<List<Barang>> getBarang() async {
    final res = await http.get(Uri.parse(baseUrl));

    if (res.statusCode == 200) {
      List jsonList = jsonDecode(res.body);
      return jsonList.map((data) => Barang.fromJson(data)).toList();
    } else {
      throw Exception("Failed to load data");
    }
  }
}
