import 'package:flutter/material.dart';

double getDeviceWidth(context, int percentage) =>
    MediaQuery.of(context).size.width * percentage / 100;

double getDeviceHeight(context, int percentage) =>
    MediaQuery.of(context).size.height * percentage / 100;
