import 'package:coin/model/cost_response_model.dart';
import 'package:coin/repository/coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetStoredCoinController extends StateNotifier<CostResponseModel> {
  final CoinRepository _repository;

  GetStoredCoinController({
    required CoinRepository repository,
  })  : _repository = repository,
        super(
          CostResponseModel(
            sensor1: null,
            sensor2: null,
            sensor3: null,
            sensor4: null,
          ),
        );

  Future<void> execute() async {
    final res = await _repository.getStoredCoin();
    state = state.copyWith(res.sensor1, res.sensor2, res.sensor3, res.sensor4);
  }
}
