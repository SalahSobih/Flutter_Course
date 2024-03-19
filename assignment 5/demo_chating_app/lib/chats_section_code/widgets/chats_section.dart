import 'package:demo_chating_app/AppColors.dart';
import 'package:demo_chating_app/chats_section_code/chatData.dart';
import 'package:demo_chating_app/chats_section_code/widgets/mydata.dart';
import 'package:demo_chating_app/messagesview/widgets/chatviewwidget.dart';
import 'package:demo_chating_app/messagesview/widgets/messagesdata.dart';
import 'package:flutter/material.dart';

class chats_section extends StatelessWidget {
  const chats_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return chat_data(
                image: users[index].image,
                name: users[index].name,
                msg: users[index].lastmsg,
                time: users[index].time,
                ontapfn: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => chatview(
                            name: messages[index].name,
                            img: messages[index].img,
                          )));
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: AppColors.background,
                endIndent: 30,
                indent: 30,
                thickness: 0.5,
              );
            },
            itemCount: users.length),
      ),
    );
  }
}
