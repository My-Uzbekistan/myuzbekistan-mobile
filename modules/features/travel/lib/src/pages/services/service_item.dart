import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'service_badge.dart';

class ServiceItem {
  final String title;
  final String? iconPath;
  final String? iconUrl;
  final Color color;
  final bool featured;
  final ServiceBadge? badge;
  final AsyncCallback? onTap;

  const ServiceItem({
    required this.title,
    this.iconPath,
    this.iconUrl,
    required this.color,
    this.featured = false,
    this.badge,
    this.onTap,
  });
}
