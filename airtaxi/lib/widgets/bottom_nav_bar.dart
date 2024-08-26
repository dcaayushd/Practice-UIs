import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

Widget buildBottomNavigationBar(BuildContext context, int selectedIndex, void Function(int) onIconTapped) {
  return Container(
    height: 80,
    margin: const EdgeInsets.all(12),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.7), // Glassy effect
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5)),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(5, (index) {
        final isActive = selectedIndex == index;
        return GestureDetector(
          onTap: () => onIconTapped(index),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: isActive
                ? AnimatedContainer(
                    key: ValueKey<int>(index),
                    duration: const Duration(milliseconds: 300),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        _getIconForIndex(index),
                        color: Colors.black,
                      ),
                    ),
                  )
                : Container(
                    key: ValueKey<int>(index),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Icon(
                        _getIconForIndex(index),
                        color: Colors.grey,
                      ),
                    ),
                  ),
          ),
        );
      }),
    ),
  );
}

IconData _getIconForIndex(int index) {
  switch (index) {
    case 0:
      return IconlyLight.home;
    case 1:
      return IconlyLight.wallet;
    case 2:
      return IconlyLight.location;
    case 3:
      return IconlyLight.time_circle;
    case 4:
      return IconlyLight.setting;
    default:
      return IconlyLight.home;
  }
}
