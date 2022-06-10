import 'package:flutter/material.dart';
import 'package:nubank_interface/shared/theme/app_icons.dart';
import 'package:nubank_interface/ui/pages/home/home.dart';
import '../../../../shared/theme/theme.dart';

class OptionsTileComponent extends StatelessWidget {
  const OptionsTileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          height: 1,
          color: AppColors.grey300,
          margin: const EdgeInsets.only(top: 24),
        ),
        OptionTileItem(
          optionTitle: "Cartão de crédito",
          optionSubtitleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fatura atual',
                style: TextStyle(
                    color: AppColors.grey500,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'R\$ 1.395,00',
                  style: AppTypography.headline6(context)
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Limite disponível de R\$ 700,00',
                style: TextStyle(
                    color: AppColors.grey500,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Text("Parcelar compras",
                    style: TextStyle(fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
        OptionTileItem(
          optionTitle: "Empréstimo",
          optionSubtitleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Valor disponível de até',
                style: TextStyle(
                    color: AppColors.grey500,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text('R\$ 25.000,00',
                    style: TextStyle(
                        color: AppColors.grey500,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
        OptionTileItem(
          optionTitle: "Investimentos",
          optionSubtitleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'O jeito Nu de investir: sem asteríscos, linguagem fácil e a partir de R\$1. Saiba mais.',
                style: TextStyle(
                    color: AppColors.grey500,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const CustomCardItem(
                    icon: AppIcons.nuds_ic_grid,
                    text: "Meu Pedacinho do Nubank"),
              ),
            ],
          ),
        ),
        OptionTileItem(
          optionTitle: "Seguros",
          optionSubtitleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Proteção para você cuidar do que importa',
                  style: TextStyle(
                      color: AppColors.grey500,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const CustomCardItem(
                    icon: AppIcons.nuds_ic_heart, text: "Seguro vida"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const CustomCardItem(
                    icon: AppIcons.nuds_ic_phone, text: "Seguro celular"),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class OptionTileItem extends StatelessWidget {
  const OptionTileItem(
      {Key? key, required this.optionTitle, required this.optionSubtitleWidget})
      : super(key: key);

  final String optionTitle;
  final Widget optionSubtitleWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    optionTitle,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Icon(Icons.chevron_right),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              optionSubtitleWidget
            ],
          ),
        ),
        Container(
          height: 1,
          color: AppColors.grey300,
        ),
      ],
    );
  }
}
