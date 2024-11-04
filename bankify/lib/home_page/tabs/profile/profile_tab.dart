import 'dart:math';

import 'package:bankify/home_page/tabs/profile/configuration_model.dart';
import 'package:bankify/home_page/tabs/profile/profile_picture_name.dart';
import 'package:bankify/utils/colors.dart';
import 'package:bankify/utils/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 80),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: StoreColors.darkGreen,
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -50,
                        right: -20,
                        height: 150,
                        child: Transform.flip(
                          flipY: true,
                          flipX: true,
                          child: Transform.rotate(
                            angle: pi / 1.8,
                            child: const Image(
                              image: Svg('assets/svgs/svg-path.svg'),
                              color: StoreColors.darkBrown,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -130,
                        right: -5,
                        height: 200,
                        child: Transform.flip(
                          flipY: false,
                          flipX: true,
                          child: Transform.rotate(
                            angle: pi / 2.9,
                            child: const Image(
                              image: Svg('assets/svgs/svg-path.svg'),
                              color: StoreColors.darkTeal,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        right: 20,
                        child: MenuWidget(
                          color: StoreColors.darkTeal,
                        ),
                      ),
                      const Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: ProfilePictureWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              for (final model in ConfigurationModel.dummy())
                getConfigurationWidget(model),
              const SizedBox(height: 15),
              for (final model in ConfigurationModel.dummy1())
                getConfigurationWidget(model),
              const SizedBox(height: 15),
              for (final model in ConfigurationModel.dummy2())
                getConfigurationWidget(model),
            ],
          ),
        ),
      ),
    );
  }

  Container getConfigurationWidget(ConfigurationModel model) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: model.iconContainerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  model.icon,
                  color: model.iconColor,
                  size: 23,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                model.configurationName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (model.hint != null)
                Text(
                  model.hint!,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              const SizedBox(width: 10),
              model.trailingWidget,
            ],
          ),
        ],
      ),
    );
  }
}
