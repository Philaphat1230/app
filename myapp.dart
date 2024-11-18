import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("แอปของคนหล่อ"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // ตั้งให้วางตรงกลาง
            children: [
              Text(
                "สวัสดีงับ",
                style: TextStyle(color: Color.fromARGB(255, 38, 17, 65)),
              ),
              SizedBox(height: 20), // เพิ่มช่องว่างระหว่างข้อความและภาพ
              Image.network(
                'https://assets.goal.com/images/v3/blt543cc25b24771602/Zlatan_Ibrahimovic_AC_Milan_2021-22.jpg?auto=webp&format=pjpg&width=3840&quality=60',
              ),
              Image(image: AssetImage('images/milan.jpg')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.thumb_up_alt_outlined),
        ),
      ),
    );
  }
}

