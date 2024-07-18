import 'package:coin/core/base_url.dart';
import 'package:dio/dio.dart';

final Dio dio = Dio(
  BaseOptions(
    baseUrl: baseUrl,
  ),
);
