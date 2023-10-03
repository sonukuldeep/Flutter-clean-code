extension StrFromat on String {
  String get firstCapital {
    List<String> values = split("");
    values[0] = values[0].toLowerCase();
    return values.join();
  }
}
