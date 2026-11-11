import 'package:flutter/material.dart';
import 'package:flutter_application_4/controller/listmakanan_controller.dart';
import 'package:get/get.dart';

class ListmakananPage extends StatelessWidget {
  ListmakananPage({super.key});

  final controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Makanan')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final error = controller.errorMessage.value;
        if (error != null) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(error, textAlign: TextAlign.center),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: controller.fetchMeals,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        final meals = controller.makananModel.value?.meals ?? [];
        if (meals.isEmpty) {
          return const Center(child: Text('No meals found'));
        }

        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            final meal = meals[index];
            final imageUrl = meal['strMealThumb'];

            return ListTile(
              leading: imageUrl == null || imageUrl.isEmpty
                  ? const Icon(Icons.restaurant)
                  : Image.network(
                      imageUrl,
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.restaurant),
                    ),
              title: Text(meal['strMeal'] ?? 'Unknown meal'),
              subtitle: Text(
                [meal['strArea'], meal['strCategory']]
                    .whereType<String>()
                    .where((value) => value.isNotEmpty)
                    .join(' • '),
              ),
            );
          },
        );
      }),
    );
  }
}
