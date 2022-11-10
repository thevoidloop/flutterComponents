import 'package:flutter/material.dart';
import 'package:fluttercomponents/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Duis sit aliqua amet nulla voluptate ipsum. Aliqua anim qui ullamco sunt proident ea culpa et nulla aute laborum consectetur aliqua. Tempor et sit incididunt non nisi officia consequat non consectetur eu veniam consectetur. Est excepteur ullamco excepteur non amet ad deserunt adipisicing. Id irure tempor laborum veniam incididunt veniam occaecat excepteur ut dolore irure. Duis fugiat do culpa cillum officia elit exercitation occaecat.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
