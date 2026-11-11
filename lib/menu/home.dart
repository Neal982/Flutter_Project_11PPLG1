import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_4/controller/listmakanan_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100,
        child: Obx(
          () {
            if (controller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            }

            final error = controller.errorMessage.value;
            if (error != null) {
              return Center(
                child: TextButton(
                  onPressed: controller.fetchMeals,
                  child: Text('$error  Tap to retry'),
                ),
              );
            }

            final meals = controller.makananModel.value?.meals ?? [];
            if (meals.isEmpty) {
              return const Center(child: Text('No meals found'));
            }

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: meals.length,
              itemBuilder: (context, index) {
                final makanan = meals[index];
                return SizedBox(
                  width: 200,
                  child: Card(
                    child: ListTile(
                      leading: makanan['strMealThumb'] == null
                          ? const Icon(Icons.restaurant)
                          : Image.network(
                              makanan['strMealThumb']!,
                              width: 48,
                              height: 48,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.restaurant),
                            ),
                      title: Text(makanan['strMeal'] ?? 'Unknown meal'),
                      subtitle: Text(
                        makanan['strArea'] ?? '',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
