import 'package:demo_chating_app/AppColors.dart';
import 'package:demo_chating_app/chats_section_code/widgets/mydata.dart';
import 'package:flutter/material.dart';

class FavoritContacts extends StatelessWidget {
  const FavoritContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Favorite Contacts",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 110,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        users[index].name.split(' ').first,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                itemCount: users.length - 5),
          ),
        ],
      ),
    );
  }
}
