class LoginResponeModel {
  final bool state;
  final String message;
  final String token;

  LoginResponeModel(
      {required this.state, required this.message, required this.token});

  factory LoginResponeModel.fromJson(Map<String, dynamic> json) {
    return LoginResponeModel(
        state: json['state'],
        message: json['message'],
        token: json['state'] ? json['data']['token'] : null);
  }
}
