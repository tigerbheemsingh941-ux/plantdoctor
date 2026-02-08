import 'package:shared_preferences/shared_preferences.dart';

class RecentSearchService {
  static const String _keyRecentSearches = 'recent_searches';
  static const int _maxRecentSearches = 10;

  Future<List<String>> getRecentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_keyRecentSearches) ?? [];
  }

  Future<void> addRecentSearch(String query) async {
    if (query.isEmpty) return;

    final prefs = await SharedPreferences.getInstance();
    final searches = prefs.getStringList(_keyRecentSearches) ?? [];

    // Remove if already exists to move it to the front
    searches.remove(query);

    // Add to the front
    searches.insert(0, query);

    // Keep only the latest N searches
    if (searches.length > _maxRecentSearches) {
      searches.removeRange(_maxRecentSearches, searches.length);
    }

    await prefs.setStringList(_keyRecentSearches, searches);
  }

  Future<void> clearRecentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyRecentSearches);
  }
}
