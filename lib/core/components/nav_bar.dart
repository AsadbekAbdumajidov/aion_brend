
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/cubit_state.dart';
import 'package:aion/cubit/nav_bar_cubit.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => AppBlock(),
      child: BlocConsumer<AppBlock, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: context
          .read<AppBlock>()
          .pages[context.watch<AppBlock>().currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: he(12),
        unselectedFontSize: he(12),
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
        
            context.read<AppBlock>().addPages(v);

        },
        
        selectedItemColor: AppColors.primarColor,
        unselectedItemColor: AppColors.black,
        currentIndex: context.watch<AppBlock>().currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.description_outlined),
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.history),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.add_box_outlined),
            ),
            label: 'New',
          ),
          BottomNavigationBarItem(
            
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.bookmark_outline_sharp),
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}