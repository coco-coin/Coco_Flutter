import 'package:coin/core/dio.dart';
import 'package:coin/model/cost_response_model.dart';

class CoinRepository {
  Future<CostResponseModel> getStoredCoin() async {
    try {
      final res = await dio.get("/get-sensor-data");
      return CostResponseModel.fromJson(res.data);
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
