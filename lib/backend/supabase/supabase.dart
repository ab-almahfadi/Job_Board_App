import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://szgohtdnamsqaduvbhoi.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN6Z29odGRuYW1zcWFkdXZiaG9pIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM2Nzg5MjUsImV4cCI6MjAxOTI1NDkyNX0.3Ls9OU2PNEI4x6vIwrq56Twxs14ROzH7ZrfzwFxxdMM';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
