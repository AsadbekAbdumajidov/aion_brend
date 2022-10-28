import 'package:aion/src/components/app_bar.dart';
import 'package:aion/src/components/search_app_bar.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/views/search/_widget/%20builder_item_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  final _focusNode = FocusNode();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Qidiruvlar",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: Column(
        children: [
           Padding(
             padding:  EdgeInsets.symmetric(vertical: he(4)),
             child: SearchBar(
              focus: _focusNode,
              autoFocus: true,
              controller: controller,
          ),
           ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(16)),
              child: GridView.builder(
                padding: EdgeInsets.symmetric(vertical: he(15)),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 15,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: he(244),
                  crossAxisSpacing: he(5),
                  mainAxisSpacing: he(5),
                  crossAxisCount: 2,
                ),
                itemBuilder: (_, __) => InkWell(
                    onTap: (() {
                      Navigator.pushNamed(context, AppRoutes.descripton);
                    }),
                    child: const BuilderItemWidget()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
