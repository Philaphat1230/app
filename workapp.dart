import 'package:flutter/material.dart';

class Appimg extends StatelessWidget {
  const Appimg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // ปิดแบนเนอร์ debug
      home: Scaffold(
        backgroundColor: Colors.black,  // สีพื้นหลังของหน้าจอ
        appBar: AppBar(
          title: const Text("แอปของคนหล่อ"),  // ชื่อของแอปใน AppBar
          backgroundColor: Colors.white,  // สีพื้นหลังของ AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // จัดตำแหน่งให้วางตรงกลาง
            children: [
              // ข้อความ
              Text(
                "Player name Marco van Basten ",
                style: TextStyle(color: Color.fromARGB(255, 243, 242, 245)),  // สีข้อความ
              ),
              const SizedBox(height: 20),  // เพิ่มช่องว่างระหว่างภาพ
              // ภาพจาก assets
              Image.asset(
                'images/milan.jpg'
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // เพิ่มฟังก์ชันการทำงานเมื่อกดปุ่มนี้
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('คุณกดปุ่ม!')),
            );
          },
          child: const Icon(Icons.thumb_up_alt_outlined),
        ),
      ),
    );
  }
}