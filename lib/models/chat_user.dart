class ChatUser {
  late String image;
  late String about;
  late String createdAt;
  late String id;
  late bool isOnline;
  late String lastActive;
  late String name;
  late String email;
  late String pushToken;
  ChatUser({
    required this.image,
    required this.about,
    required this.createdAt,
    required this.id,
    required this.isOnline,
    required this.lastActive,
    required this.name,
    required this.email,
    required this.pushToken,
  });

  ChatUser.fromJson(Map<String, dynamic> json) {
    image = json['image'] ?? '';
    about = json['about'] ?? '';
    createdAt = json['created_at'] ?? '';
    id = json['id'] ?? '';
    isOnline = json['is_online'] ?? '';
    lastActive = json['last_active'] ?? '';
    name = json['name'] ?? '';
    email = json['email'] ?? '';
    pushToken = json['push_token'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['about'] = about;
    data['created_at'] = createdAt;
    data['id'] = id;
    data['is_online'] = isOnline;
    data['last_active'] = lastActive;
    data['name'] = name;
    data['email'] = email;
    data['push_token'] = pushToken;
    return data;
  }
}
