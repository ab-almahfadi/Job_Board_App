import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime? newCustomFunction(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Subtract 1 day from the original date
  DateTime modifiedDate = originalDate.subtract(Duration(days: 1));

  // Return the modified date
  return modifiedDate;
}

DateTime? startWeek(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Define a map to map weekdays to their corresponding index (Monday is 1, Sunday is 7)
  Map<int, int> weekdayIndexMap = {
    DateTime.monday: 1,
    DateTime.tuesday: 2,
    DateTime.wednesday: 3,
    DateTime.thursday: 4,
    DateTime.friday: 5,
    DateTime.saturday: 6,
    DateTime.sunday: 7,
  };

  // Get the weekday index of the original date
  int weekdayIndex = weekdayIndexMap[originalDate.weekday] ?? 1;

  // Subtract days until Monday (weekday index 1)
  while (weekdayIndex > 1) {
    originalDate = originalDate.subtract(Duration(days: 1));
    weekdayIndex = weekdayIndexMap[originalDate.weekday] ?? 1;
  }

  // Return the modified date
  return originalDate;
}

DateTime? newCustomFunctionTues(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Subtract 1 day from the original date
  DateTime modifiedDate = originalDate.subtract(Duration(days: 2));

  // Return the modified date
  return modifiedDate;
}

DateTime? newCustomFunctionThur(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Subtract 1 day from the original date
  DateTime modifiedDate = originalDate.subtract(Duration(days: 4));

  // Return the modified date
  return modifiedDate;
}

DateTime? newCustomFunctionWed(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Subtract 1 day from the original date
  DateTime modifiedDate = originalDate.subtract(Duration(days: 3));

  // Return the modified date
  return modifiedDate;
}

DateTime? newCustomFunctionFri(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Subtract 1 day from the original date
  DateTime modifiedDate = originalDate.subtract(Duration(days: 4));

  // Return the modified date
  return modifiedDate;
}

DateTime? newCustomFunctionSat(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Subtract 1 day from the original date
  DateTime modifiedDate = originalDate.subtract(Duration(days: 6));

  // Return the modified date
  return modifiedDate;
}

DateTime? endWeek(String? date) {
  if (date == null) {
    return null;
  }

  // Parse the input date string
  DateTime originalDate = DateTime.parse(date);

  // Define a map to map weekdays to their corresponding index (Monday is 1, Sunday is 7)
  Map<int, int> weekdayIndexMap = {
    DateTime.monday: 1,
    DateTime.tuesday: 2,
    DateTime.wednesday: 3,
    DateTime.thursday: 4,
    DateTime.friday: 5,
    DateTime.saturday: 6,
    DateTime.sunday: 7,
  };

  // Get the weekday index of the original date
  int weekdayIndex = weekdayIndexMap[originalDate.weekday] ?? 1;

  // Add days until Sunday (weekday index 7)
  while (weekdayIndex < 7) {
    originalDate = originalDate.add(Duration(days: 1));
    weekdayIndex = weekdayIndexMap[originalDate.weekday] ?? 1;
  }

  // Return the modified date
  return originalDate;
}
