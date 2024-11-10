import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/get_it/get_it.dart';
import 'package:flutter_app_catbreeds/data/model/cat_breeds/catbreeds_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'catbreeds_repository.g.dart';

final api = dotenv.env['API']!;
final apiKey = dotenv.env['API_KEY']!;
const host = '/v1/images';

@Riverpod(keepAlive: true)
FutureOr<List<CatbreedsModel>> listCat(
  ref,
) async {
  try {
    const format = 'json';
    const hasBreeds = 'true';
    const limit = '50';

    Uri url = Uri.https(api, '/$host/search/', {
      'format': format,
      'has_breeds': hasBreeds,
      'limit': limit,
    });
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'x-api-key': apiKey,
    };

    final client = getIt<http.Client>();

    final res = await client.get(
      url,
      headers: headers,
    );
    final data = json.decode(res.body) as List;
    List<CatbreedsModel> listCatBreeds =
        data.map((json) => CatbreedsModel.fromJson(json)).toList();
    return listCatBreeds;
  } catch (e) {
    debugPrint('Error listCat: $e');
    return [];
  }
}
