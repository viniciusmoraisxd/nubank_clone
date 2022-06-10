import 'package:flutter/material.dart';
import 'package:nubank_interface/shared/theme/app_icons.dart';

import 'components.dart';

class CardsComponent extends StatelessWidget {
  const CardsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 18,
        ),
        child: const CustomCardItem(
          icon: AppIcons.ic_card_nu,
          text: "Meus cartões",
        ),
      ),
    );
  }
}
