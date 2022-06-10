import 'package:flutter/material.dart';
import 'package:nubank_interface/shared/theme/app_icons.dart';
import '../../../../shared/theme/theme.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: AppColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: AppColors.primaryColorVariant,
                    child: const Icon(
                      AppIcons.nuds_ic_user,
                      color: AppColors.white,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        // icon: const Icon(AppIcons.nuds_ic_invisible),
                        icon: const Icon(AppIcons.nuds_ic_visible),
                        color: Colors.white,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(AppIcons.help),
                          color: Colors.white),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(AppIcons.nuds_ic_add_user),
                          color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.02, left: 8),
              child: const Text(
                'Olá, Vinícius',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                // style: AppTypography.headline6(context)?.copyWith(
                //     color: AppColors.white,
                //     fontWeight: FontWeight.w500,
                //     fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
