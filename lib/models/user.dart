import 'dart:convert';

class User {
  String? name;
  String? userName;
  String? email;
  dynamic bio;
  bool? emailConfirmed;
  dynamic phoneNumber;
  bool? phoneNumberConfirmed;
  String? profileImage;
  bool? psDisplayFullName;
  bool? psDataSharing;
  bool? psPreciseLocation;
  List<dynamic>? roles;
  int? playerId;

  User({
    this.name,
    this.userName,
    this.email,
    this.bio,
    this.emailConfirmed,
    this.phoneNumber,
    this.phoneNumberConfirmed,
    this.profileImage,
    this.psDisplayFullName,
    this.psDataSharing,
    this.psPreciseLocation,
    this.roles,
    this.playerId,
  });

  factory User.fromMap(Map<String, dynamic> data) => User(
        name: data['Name'] as String?,
        userName: data['UserName'] as String?,
        email: data['Email'] as String?,
        bio: data['Bio'] as dynamic,
        emailConfirmed: data['EmailConfirmed'] as bool?,
        phoneNumber: data['PhoneNumber'] as dynamic,
        phoneNumberConfirmed: data['PhoneNumberConfirmed'] as bool?,
        profileImage: data['ProfileImage'] as String?,
        psDisplayFullName: data['PS_DisplayFullName'] as bool?,
        psDataSharing: data['PS_DataSharing'] as bool?,
        psPreciseLocation: data['PS_PreciseLocation'] as bool?,
        roles: data['Roles'] as List<dynamic>?,
        playerId: data['PlayerId'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'Name': name,
        'UserName': userName,
        'Email': email,
        'Bio': bio,
        'EmailConfirmed': emailConfirmed,
        'PhoneNumber': phoneNumber,
        'PhoneNumberConfirmed': phoneNumberConfirmed,
        'ProfileImage': profileImage,
        'PS_DisplayFullName': psDisplayFullName,
        'PS_DataSharing': psDataSharing,
        'PS_PreciseLocation': psPreciseLocation,
        'Roles': roles,
        'PlayerId': playerId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory User.fromJson(String data) {
    return User.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [User] to a JSON string.
  String toJson() => json.encode(toMap());
}
