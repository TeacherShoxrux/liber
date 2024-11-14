import 'package:flutter/material.dart';

import 'account_menu_widget.dart';

class AccountMenu extends StatelessWidget {
  const AccountMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: 300,
      child: Container(
        constraints: const BoxConstraints(
        ),
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.symmetric(vertical: 15),

        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(14)
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MenuWidget(
                  menuItems: [
                    MenuItem(icon: Icons.subscriptions, text: 'Обуна бўлиш', onTap: () {}),
                    MenuItem(icon: Icons.account_circle, text: 'Э-Хисоб', onTap: () {}),
                    MenuItem(icon: Icons.book, text: 'Китобларим', onTap: () {}),
                    MenuItem(icon: Icons.bookmark, text: 'Сақланганлар', onTap: () {}),
                    MenuItem(icon: Icons.settings, text: 'Созламалар', onTap: () {}),
                    MenuItem(icon: Icons.nightlight_round, text: 'Тунги режим', onTap: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
