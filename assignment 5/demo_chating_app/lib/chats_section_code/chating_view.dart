import 'package:demo_chating_app/AppColors.dart';
import 'package:demo_chating_app/chats_section_code/widgets/FavoriteContacts.dart';
import 'package:demo_chating_app/chats_section_code/widgets/chats_section.dart';
import 'package:flutter/material.dart';

class chating_view extends StatelessWidget {
  const chating_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          "Chats",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: AppColors.white,
            ),
          )
        ],
      ),
      body: const Column(
        children: [
          FavoritContacts(),
          chats_section(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
