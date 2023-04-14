import 'package:pentarex/api/api_endpoints.dart';
import 'package:pentarex/api/base_repo.dart';
import 'package:pentarex/api/base_result.dart';
import 'package:pentarex/model/meme_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MemeRepo extends BaseRepo {
  Future<List<Meme>?> getMemes() async {
    late BaseResult response;

    try {
      response = await get(Endpoint.meme);
    } on Exception catch (e) {
      print('Exception is $e');
    }

    switch (response.status) {
      case ResponseStatus.Success:
        try {
          return (response.data["data"]["memes"] as List)
              .map((e) => Meme.fromJson(e))
              .toList();
        } catch (e, stack) {
          print("memes error: $e at $stack");
          return null;
        }
      default:
        Fluttertoast.showToast(
          msg: response.errorMessage,
        );
        break;
    }

    return null;
  }
}
