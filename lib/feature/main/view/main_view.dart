import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/feature/home/home_view.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class MainView extends HookWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    void onDestinationSelected(int index) {
      selectedIndex.value = index;
    }

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              navigationBarTheme: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppTextsytle.size12w500(color: AppColor.primary1000);
                  }
                  return AppTextsytle.size12w500(color: AppColor.primary500);
                }),
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.white,
              elevation: 0,
              height: 50.h,
              selectedIndex: selectedIndex.value,
              onDestinationSelected: onDestinationSelected,
              indicatorColor: AppColor.white.withOpacity(0.1),
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              animationDuration: Duration(milliseconds: 400),
              destinations: [
                NavigationDestination(
                  icon: Assets.icons.iconHome.svg(),
                  selectedIcon: Assets.icons.iconHomeSelected.svg(),
                  label: "Home",
                ),
                NavigationDestination(
                  icon: Assets.icons.iconChat.svg(),
                  selectedIcon: Assets.icons.iconMessageSelected.svg(),
                  label: "Chat",
                ),
                NavigationDestination(
                  icon: Assets.icons.iconBookmark.svg(),
                  selectedIcon: Assets.icons.iconBookmarkSelected.svg(),
                  label: "Saved",
                ),
                NavigationDestination(
                  icon: Assets.icons.iconProfile.svg(),
                  selectedIcon: Assets.icons.iconProfileSelected.svg(),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
      body: _buildPage(selectedIndex.value),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return Center(
          child: Text(
            'Chat',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        );
      case 2:
        return Center(
          child: Text(
            'Saved',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        );
      default:
        return Container();
    }
  }
}
