import 'package:flutter/material.dart';

class ContactItemItem {
  final String type;
  final String url;
  final String icon;
  final Color backgroundColor;
  final Color iconColor;

  ContactItemItem({
    required this.type,
    required this.url,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });
}