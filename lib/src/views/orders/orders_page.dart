import 'package:aion/src/components/app_bar.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/src/views/orders/_widget/delivered.dart';
import 'package:aion/src/views/orders/_widget/on_the_way.dart';
import 'package:aion/src/views/orders/_widget/tab_bar_item.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Mening zakazlarim",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
     
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (ctx, value) {
              return [
                SliverAppBar(
                  pinned: true,
                  toolbarHeight: 0,
                  bottom: AppBar(
                    automaticallyImplyLeading: false,
                    centerTitle: false,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          indicatorWeight: 2,
                          indicatorColor: AppColors.instance.primarColor,
                          isScrollable: true,
                          labelColor: AppColors.instance.primarColor,
                          labelStyle:
                              AppTextStyles.instance.stylew600S14Primary,
                          unselectedLabelColor: AppColors.instance.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs:const [
                            TabBarItemContainer(title: "Yo'lda"),
                            TabBarItemContainer(title: "Yetib kelgan")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body:const TabBarView(
              children: [
                OnTheWay(),
                Delivered()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
