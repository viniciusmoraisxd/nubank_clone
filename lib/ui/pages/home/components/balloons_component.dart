import 'package:flutter/material.dart';
import '../../../../shared/theme/theme.dart';

class BalloonsComponent extends StatelessWidget {
  const BalloonsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.13,
        child: ListView(
          addAutomaticKeepAlives: true,
          itemExtent: 280,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
    
          padding: const EdgeInsets.only(left: 24, right: 8),
          children: [
            BalloonItem(
              textWidget: RichText(
                text: TextSpan(
                    text: 'Liberdade é escolher onde receber seu ',
                    style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.black,
                        fontFamily: "Gotham-SSm"),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'salário',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                          )),
                      const TextSpan(
                        text: '. Saiba mais.',
                      ),
                    ]),
              ),
            ),
            BalloonItem(
              textWidget: RichText(
                text: TextSpan(
                    text: 'Você tem até ',
                    style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.black,
                        fontFamily: "Gotham-SSm"),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'R\$ 25.000,00',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                          )),
                      const TextSpan(
                        text: ' disponíveis para empréstimo',
                      ),
                    ]),
              ),
            ),
            BalloonItem(
              textWidget: RichText(
                text: TextSpan(
                    text: 'Salve seus amigos da burocracia.',
                    style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.black,
                        fontFamily: "Gotham-SSm"),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Faça um convite pra o Nubank',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 12,
                          )),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BalloonItem extends StatelessWidget {
  final Widget textWidget;
  const BalloonItem({Key? key, required this.textWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.74,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.cardBackgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: textWidget,
      ),
    );
  }
}
