import 'package:flutter/material.dart';

import '../../../../shared/theme/theme.dart';

class AccountComponent extends StatelessWidget {
  const AccountComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
       
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.036,
            horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Conta',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.grey700,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "R\$ 399,92",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
