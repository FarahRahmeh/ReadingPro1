class UserProfileModel {
  int? _profileId;
  String? _name;
  String? _email;
  String? _photo;
  int? _myPoints;
  List<FavGenres>? _favGenres;

  UserProfileModel(
      {int? profileId,
      String? name,
      String? email,
      String? photo,
      int? myPoints,
      List<FavGenres>? favGenres}) {
    if (profileId != null) {
      _profileId = profileId;
    }
    if (name != null) {
      _name = name;
    }
    if (email != null) {
      _email = email;
    }
    if (photo != null) {
      _photo = photo;
    }
    if (myPoints != null) {
      _myPoints = myPoints;
    }
    if (favGenres != null) {
      _favGenres = favGenres;
    }
  }

  // int? get profileId => _profileId;
  // set profileId(int? profileId) => _profileId = profileId;
  // String? get name => _name;
  // set name(String? name) => _name = name;
  // String? get email => _email;
  // set email(String? email) => _email = email;
  // String? get photo => _photo;
  // set photo(String? photo) => _photo = photo;
  // int? get myPoints => _myPoints;
  // set myPoints(int? myPoints) => _myPoints = myPoints;
  // List<FavGenres>? get favGenres => _favGenres;
  // set favGenres(List<FavGenres>? favGenres) => _favGenres = favGenres;

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    _profileId = json['profile_id'];
    _name = json['name'];
    _email = json['email'];
    _photo = json['photo'];
    _myPoints = json['my_points'];
    if (json['fav_genres'] != null) {
      _favGenres = <FavGenres>[];
      json['fav_genres'].forEach((v) {
        _favGenres!.add(new FavGenres.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile_id'] = _profileId;
    data['name'] = _name;
    data['email'] = _email;
    data['photo'] = _photo;
    data['my_points'] = _myPoints;
    if (_favGenres != null) {
      data['fav_genres'] = _favGenres!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FavGenres {
  String? _genre;
  DateTime? _lastInteractWithAt;

  FavGenres({String? genre, DateTime? lastInteractWithAt}) {
    if (genre != null) {
      _genre = genre;
    }
    // if (lastInteractWithAt != null) {
      _lastInteractWithAt = lastInteractWithAt;
    // }
  }

  String? get genre => _genre;
  set genre(String? genre) => _genre = genre;
  DateTime? get lastInteractWithAt => _lastInteractWithAt;
  set lastInteractWithAt(DateTime? lastInteractWithAt) =>
      _lastInteractWithAt = lastInteractWithAt;

  FavGenres.fromJson(Map<String, dynamic> json) {
    _genre = json['genre'];
    _lastInteractWithAt = json['last_interact_with_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['genre'] = _genre;
    data['last_interact_with_at'] = _lastInteractWithAt;
    return data;
  }
}
