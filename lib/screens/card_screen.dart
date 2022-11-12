import 'package:flutter/material.dart';
import 'package:fluttercomponents/widget/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              name: 'Un hermosos paisaje',
              imageUrl:
                  'https://img.freepik.com/premium-photo/fantasy-abandoned-city-day_141465-11.jpg?w=2000'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://wallpapers.com/images/hd/japanese-castle-anime-landscape-r217nepmbm4j1hci-r217nepmbm4j1hci.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://i.pinimg.com/originals/df/cb/f5/dfcbf5dd50dfd1ff95a11ab4688356b9.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://www.pixelstalk.net/wp-content/uploads/2016/10/Anime-scenery-anime-landscape.jpg'),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
