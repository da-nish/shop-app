extension StringExtension on String {
  String capitalize() {
    return isNotEmpty ? "${this[0].toUpperCase()}${substring(1)}" : "";
  }

  String rupee() {
    return "\u{20B9} ${this}";
  }
}
