import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
Logger logger = Logger(level: Level.debug, printer: PrettyPrinter());