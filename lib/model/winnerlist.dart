class Myclass {
  int _playernum = 0;
  var cross = "assets/images/cross.png";
  var zero = "assets/images/zero.png";
  var withdraw = "assets/images/pngwing.png";
  Myclass(this._playernum);
  int get playernum => _playernum;
  dynamic check() {
    if (_playernum == 1) {
      return zero;
    } else if (_playernum == 2) {
      return cross;
    } else {
      return withdraw;
    }
  }
}
