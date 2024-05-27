import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modul5/app/modules/create/views/create_view.dart';
import 'package:modul5/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'Halaman Utama',
          style: TextStyle(color: Colors.grey[300]),
        ),
        backgroundColor: Colors.grey[700],
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(children: [
            Column(
              children: [
                menu(
                  icon: Icons.add,
                  text: 'Tambah Data',
                ),
                SizedBox(
                  height: 10,
                ),
                menu(
                  icon: Icons.menu_book_rounded,
                  text: 'Cari Data',
                ),
                SizedBox(
                  height: 10,
                ),
                menu(
                  icon: Icons.update,
                  text: 'Update Data',
                ),
                SizedBox(
                  height: 10,
                ),
                menu(
                  icon: Icons.delete,
                  text: 'Delete Data',
                ),
                SizedBox(
                  height: 10,
                ),
                menu(
                  icon: Icons.report_problem_rounded,
                  text: 'Report',
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class drawer extends StatelessWidget {
  drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.grey[600],
          ),
          child: Text(
            'User Name',
            style: TextStyle(color: Colors.grey[300]),
            textAlign: TextAlign.start,
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('User'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }
}

class menu extends StatelessWidget {
  const menu({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // icon: Icon(icon),
      // label: Text(text, style: TextStyle(color: Colors.grey[800])),
      onPressed: () {
        Get.to(CreateView());
      },
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.grey[300]),
          shadowColor: const MaterialStatePropertyAll(Colors.grey),
          fixedSize: const MaterialStatePropertyAll(Size(double.infinity, 100)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          overlayColor: MaterialStatePropertyAll(Colors.grey)),
      // icon: Icon(icon),
      // label: Text(text, style: TextStyle(color: Colors.grey[800])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.grey[700],
          ),
          Text(text, style: TextStyle(color: Colors.grey[700]))
        ],
      ),
    );
  }
}
