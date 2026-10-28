import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.green,
                    child: const Text(
                      'D',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Daneal',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'daneal@gmail.com',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '+6281020304050',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_outlined, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text("Preferensi", style:  TextStyle(color: Colors.grey),),
            const SizedBox(height: 10),
            Column(
              children: [
                Text("Keamanan Akun", style: TextStyle( color: Colors.black,fontSize: 18),)
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Text("Langganan", style: TextStyle( color: Colors.black,fontSize: 18),)
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Text("Metode Pembayaran", style: TextStyle( color: Colors.black,fontSize: 18),)
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Text("Akun Keluarga", style: TextStyle( color: Colors.black,fontSize: 18),)
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Text("Alamat tersimpan", style: TextStyle( color: Colors.black,fontSize: 18),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}