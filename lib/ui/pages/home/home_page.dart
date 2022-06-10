import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../shared/theme/app_colors.dart';
import '../../controllers/controllers.dart';
import '../../models/models.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  List<CategoryModel> listCategories = [];

  @override
  void initState() {
    super.initState();
    listCategories = controller.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: AppColors.primaryColor,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () {
              return Future.delayed(
                const Duration(seconds: 2),
              );
            },
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const HeaderComponent(),
                const AccountComponent(),
                CategoriesComponent(
                  listCategories: listCategories,
                ),
                const CardsComponent(),
                const BalloonsComponent(),
                const OptionsTileComponent(),
                const FindMoreComponent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
