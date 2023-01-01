import 'package:flutter/material.dart';
import 'package:tg_pr/utils/constants.dart';

class TransListView extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String price;
  final String imageUrl;
  final String time;
  const TransListView(
      {Key? key,
      required this.name,
      required this.phoneNumber,
      required this.price,
      required this.imageUrl,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(1),
        elevation: 4,
        child: ListTile(
          title: Text(
            name,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
          subtitle: Text(
            phoneNumber,
            style: const TextStyle(color: Color(0xff858585), fontSize: 12),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(imageUrl),
            maxRadius: 36,
          ),
          tileColor: const Color(0xffEEEEEE),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: '+ ',
                  style: const TextStyle(color: Colors.green),
                  children: [
                    TextSpan(
                        text: price,
                        style: const TextStyle(color: Colors.black)),
                    const TextSpan(
                        text: ' ETB',
                        style: TextStyle(
                            fontSize: 12, color: Constants.mainPurple)),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: time,
                        style: const TextStyle(
                            color: Color(0xff858585), fontSize: 12)),
                    const TextSpan(
                        text: ' AM',
                        style:
                            TextStyle(fontSize: 8, color: Color(0xff858585))),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
