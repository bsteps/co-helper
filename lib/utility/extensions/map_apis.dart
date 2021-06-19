extension HasKeyValue on Map<String, Set<String>> {
  bool hasKeyValue(String key, String value) {
    try {
      return this[key]!.contains(value);
    } catch (e) {}
    return false;
  }
}
