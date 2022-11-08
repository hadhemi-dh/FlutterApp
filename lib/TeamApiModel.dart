/// data : [{"id":1,"abbreviation":"ATL","city":"Atlanta","conference":"East","division":"Southeast","full_name":"Atlanta Hawks","name":"Hawks"},{"id":2,"abbreviation":"BOS","city":"Boston","conference":"East","division":"Atlantic","full_name":"Boston Celtics","name":"Celtics"},{"id":3,"abbreviation":"BKN","city":"Brooklyn","conference":"East","division":"Atlantic","full_name":"Brooklyn Nets","name":"Nets"},{"id":4,"abbreviation":"CHA","city":"Charlotte","conference":"East","division":"Southeast","full_name":"Charlotte Hornets","name":"Hornets"},{"id":5,"abbreviation":"CHI","city":"Chicago","conference":"East","division":"Central","full_name":"Chicago Bulls","name":"Bulls"},{"id":6,"abbreviation":"CLE","city":"Cleveland","conference":"East","division":"Central","full_name":"Cleveland Cavaliers","name":"Cavaliers"},{"id":7,"abbreviation":"DAL","city":"Dallas","conference":"West","division":"Southwest","full_name":"Dallas Mavericks","name":"Mavericks"},{"id":8,"abbreviation":"DEN","city":"Denver","conference":"West","division":"Northwest","full_name":"Denver Nuggets","name":"Nuggets"},{"id":9,"abbreviation":"DET","city":"Detroit","conference":"East","division":"Central","full_name":"Detroit Pistons","name":"Pistons"},{"id":10,"abbreviation":"GSW","city":"Golden State","conference":"West","division":"Pacific","full_name":"Golden State Warriors","name":"Warriors"},{"id":11,"abbreviation":"HOU","city":"Houston","conference":"West","division":"Southwest","full_name":"Houston Rockets","name":"Rockets"},{"id":12,"abbreviation":"IND","city":"Indiana","conference":"East","division":"Central","full_name":"Indiana Pacers","name":"Pacers"},{"id":13,"abbreviation":"LAC","city":"LA","conference":"West","division":"Pacific","full_name":"LA Clippers","name":"Clippers"},{"id":14,"abbreviation":"LAL","city":"Los Angeles","conference":"West","division":"Pacific","full_name":"Los Angeles Lakers","name":"Lakers"},{"id":15,"abbreviation":"MEM","city":"Memphis","conference":"West","division":"Southwest","full_name":"Memphis Grizzlies","name":"Grizzlies"},{"id":16,"abbreviation":"MIA","city":"Miami","conference":"East","division":"Southeast","full_name":"Miami Heat","name":"Heat"},{"id":17,"abbreviation":"MIL","city":"Milwaukee","conference":"East","division":"Central","full_name":"Milwaukee Bucks","name":"Bucks"},{"id":18,"abbreviation":"MIN","city":"Minnesota","conference":"West","division":"Northwest","full_name":"Minnesota Timberwolves","name":"Timberwolves"},{"id":19,"abbreviation":"NOP","city":"New Orleans","conference":"West","division":"Southwest","full_name":"New Orleans Pelicans","name":"Pelicans"},{"id":20,"abbreviation":"NYK","city":"New York","conference":"East","division":"Atlantic","full_name":"New York Knicks","name":"Knicks"},{"id":21,"abbreviation":"OKC","city":"Oklahoma City","conference":"West","division":"Northwest","full_name":"Oklahoma City Thunder","name":"Thunder"},{"id":22,"abbreviation":"ORL","city":"Orlando","conference":"East","division":"Southeast","full_name":"Orlando Magic","name":"Magic"},{"id":23,"abbreviation":"PHI","city":"Philadelphia","conference":"East","division":"Atlantic","full_name":"Philadelphia 76ers","name":"76ers"},{"id":24,"abbreviation":"PHX","city":"Phoenix","conference":"West","division":"Pacific","full_name":"Phoenix Suns","name":"Suns"},{"id":25,"abbreviation":"POR","city":"Portland","conference":"West","division":"Northwest","full_name":"Portland Trail Blazers","name":"Trail Blazers"},{"id":26,"abbreviation":"SAC","city":"Sacramento","conference":"West","division":"Pacific","full_name":"Sacramento Kings","name":"Kings"},{"id":27,"abbreviation":"SAS","city":"San Antonio","conference":"West","division":"Southwest","full_name":"San Antonio Spurs","name":"Spurs"},{"id":28,"abbreviation":"TOR","city":"Toronto","conference":"East","division":"Atlantic","full_name":"Toronto Raptors","name":"Raptors"},{"id":29,"abbreviation":"UTA","city":"Utah","conference":"West","division":"Northwest","full_name":"Utah Jazz","name":"Jazz"},{"id":30,"abbreviation":"WAS","city":"Washington","conference":"East","division":"Southeast","full_name":"Washington Wizards","name":"Wizards"}]
/// meta : {"total_pages":1,"current_page":1,"next_page":null,"per_page":30,"total_count":30}

class TeamApiModel {
  TeamApiModel({
    List<Data>? data,
    Meta? meta,}){
    _data = data;
    _meta = meta;
  }

  TeamApiModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  List<Data>? _data;
  Meta? _meta;
  TeamApiModel copyWith({  List<Data>? data,
    Meta? meta,
  }) => TeamApiModel(  data: data ?? _data,
    meta: meta ?? _meta,
  );
  List<Data>? get data => _data;
  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }

}

/// total_pages : 1
/// current_page : 1
/// next_page : null
/// per_page : 30
/// total_count : 30

class Meta {
  Meta({
    num? totalPages,
    num? currentPage,
    dynamic nextPage,
    num? perPage,
    num? totalCount,}){
    _totalPages = totalPages;
    _currentPage = currentPage;
    _nextPage = nextPage;
    _perPage = perPage;
    _totalCount = totalCount;
  }

  Meta.fromJson(dynamic json) {
    _totalPages = json['total_pages'];
    _currentPage = json['current_page'];
    _nextPage = json['next_page'];
    _perPage = json['per_page'];
    _totalCount = json['total_count'];
  }
  num? _totalPages;
  num? _currentPage;
  dynamic _nextPage;
  num? _perPage;
  num? _totalCount;
  Meta copyWith({  num? totalPages,
    num? currentPage,
    dynamic nextPage,
    num? perPage,
    num? totalCount,
  }) => Meta(  totalPages: totalPages ?? _totalPages,
    currentPage: currentPage ?? _currentPage,
    nextPage: nextPage ?? _nextPage,
    perPage: perPage ?? _perPage,
    totalCount: totalCount ?? _totalCount,
  );
  num? get totalPages => _totalPages;
  num? get currentPage => _currentPage;
  dynamic get nextPage => _nextPage;
  num? get perPage => _perPage;
  num? get totalCount => _totalCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_pages'] = _totalPages;
    map['current_page'] = _currentPage;
    map['next_page'] = _nextPage;
    map['per_page'] = _perPage;
    map['total_count'] = _totalCount;
    return map;
  }

}

/// id : 1
/// abbreviation : "ATL"
/// city : "Atlanta"
/// conference : "East"
/// division : "Southeast"
/// full_name : "Atlanta Hawks"
/// name : "Hawks"

class Data {
  Data({
    num? id,
    String? abbreviation,
    String? city,
    String? conference,
    String? division,
    String? fullName,
    String? name,}){
    _id = id;
    _abbreviation = abbreviation;
    _city = city;
    _conference = conference;
    _division = division;
    _fullName = fullName;
    _name = name;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _abbreviation = json['abbreviation'];
    _city = json['city'];
    _conference = json['conference'];
    _division = json['division'];
    _fullName = json['full_name'];
    _name = json['name'];
  }
  num? _id;
  String? _abbreviation;
  String? _city;
  String? _conference;
  String? _division;
  String? _fullName;
  String? _name;
  Data copyWith({  num? id,
    String? abbreviation,
    String? city,
    String? conference,
    String? division,
    String? fullName,
    String? name,
  }) => Data(  id: id ?? _id,
    abbreviation: abbreviation ?? _abbreviation,
    city: city ?? _city,
    conference: conference ?? _conference,
    division: division ?? _division,
    fullName: fullName ?? _fullName,
    name: name ?? _name,
  );
  num? get id => _id;
  String? get abbreviation => _abbreviation;
  String? get city => _city;
  String? get conference => _conference;
  String? get division => _division;
  String? get fullName => _fullName;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['abbreviation'] = _abbreviation;
    map['city'] = _city;
    map['conference'] = _conference;
    map['division'] = _division;
    map['full_name'] = _fullName;
    map['name'] = _name;
    return map;
  }

}