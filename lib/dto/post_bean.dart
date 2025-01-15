class PostDTO {
  int userId;
  int id;
  String title;
  String body;

  PostDTO({
    this.userId = -1,
    this.id = -1,
    this.title = "",
    this.body = "",
  });

  factory PostDTO.fromJson(Map<String, dynamic> json) {
    return PostDTO(
      userId: json["userId"] ?? -1,
      id: json["id"] ?? -1,
      title: json["title"],
      body: json["body"],
    );
  }
}
