import 'package:flutter/material.dart';
import '../../../../shared/theme/theme.dart';

class FindMoreComponent extends StatelessWidget {
  const FindMoreComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 10),
              child: Text(
                "Descubra mais",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              child: ListView(
                itemExtent: 300,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                // padding: EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.only(left: 24, right: 8),
                children: const [
                  FindMoreItem(
                    title: "Parcele depois",
                    subtitle:
                        "Não parcelou e se arrependeu? Parcele suas compras aqui no app.",
                    buttonText: "Parcelar compra",
                  ),
                  FindMoreItem(
                    title: "Indique seus amigos",
                    subtitle:
                        "Mostre aos seus amigos como é fácil ter uma vida sem burocracia",
                    buttonText: "Indicar amigos",
                  ),
                  FindMoreItem(
                    title: "WhatsApp",
                    subtitle:
                        "Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank"
                        " sem nem sair da conversa",
                    buttonText: "Quero conhecer",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FindMoreItem extends StatelessWidget {
  // final Widget textWidget;
  final String title;
  final String subtitle;
  final String buttonText;
  const FindMoreItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.74,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.cardBackgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.bodyText(context)
                      ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      color: AppColors.grey600,
                      fontSize: 14,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                elevation: 0,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  buttonText,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
