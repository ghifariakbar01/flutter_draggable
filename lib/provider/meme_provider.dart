import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pentarex/dio.dart';
import 'package:pentarex/model/meme_model.dart';

final AutoDisposeFutureProvider<List<Meme>?> memeProvider =
    FutureProvider.autoDispose((ref) async {
  final repo = MemeRepo();

  print('got memes');

  return await repo.getMemes();
});
