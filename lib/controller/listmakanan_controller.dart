import 'package:flutter_application_4/models/makanan_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListmakananController extends GetxController {
  final Rxn<MakananModel> makananModel = Rxn<MakananModel>();
  final isLoading = false.obs;
  final errorMessage = Rxn<String>();

  @override
  void onInit() {
    super.onInit();
    fetchMeals();
  }

  Future<void> fetchMeals() async {
    isLoading.value = true;
    errorMessage.value = null;

    try {
      final url = Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/search.php?f=n',
      );
      final response = await http.get(url);

      if (response.statusCode != 200) {
        errorMessage.value = 'Request failed (${response.statusCode})';
        return;
      }

      makananModel.value = makananModelFromJson(response.body);
    } catch (error) {
      errorMessage.value = 'Could not load meals: $error';
    } finally {
      isLoading.value = false;
    }
  }
}
