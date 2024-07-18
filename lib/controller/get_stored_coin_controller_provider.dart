import 'package:coin/controller/get_stored_coin_controller.dart';
import 'package:coin/model/cost_response_model.dart';
import 'package:coin/repository/coin_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getStoredCoinControllerProvider = StateNotifierProvider<GetStoredCoinController, CostResponseModel>(
  (ref) => GetStoredCoinController(
    repository: ref.watch(coinRepositoryProvider),
  ),
);
