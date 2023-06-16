import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://oywmvmfedssvgurvdxtc.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95d212bWZlZHNzdmd1cnZkeHRjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODE4NTgzMDcsImV4cCI6MTk5NzQzNDMwN30.uB2FNvoGuSRSh3-JizE2Yi5p7CKQVU8bEUQvP7J3elY';

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
