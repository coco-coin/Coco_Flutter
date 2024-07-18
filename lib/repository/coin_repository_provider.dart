import 'package:coin/repository/coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinRepositoryProvider = Provider<CoinRepository>((ref) => CoinRepository());
