import 'package:dio/dio.dart';
import 'package:widgets_app/domain/entities/cat.dart';
import 'package:widgets_app/infrastructure/models/cat_model.dart';

class GetApiCatAnswer {
  final _dio = Dio();

  Future<List<Cat>> fetchCats() async {
    try {
      final response = await _dio.get('https://api.thecatapi.com/v1/breeds?limit=10');

      final List<dynamic> data = response.data;

      final List<Cat> cats = data.map((json) {
        final catModel = CatModel.fromJsonMap(json);
        return catModel.toCatEntity();
      }).toList();

      return cats;

    } catch (e) {
      throw Exception('Fallo la API: $e');
    }
  }
}
