////////// Extensions //////////////
//----------- 1 ---------
extension NumExtension on num {
  String get approximate {
    if (this < 1000) {
      return '$this';
    } else if (this < 1000000) {
      return '${this ~/ 1000} K';
    } else {
      return '${this ~/ 1000000} M';
    }
  }
}
