class PhotoDto {
  String id;
  String author;
  int width;
  int height;
  String url;
  String downloadUrl;

  PhotoDto({
    this.id = "",
    this.author = "",
    this.width = 0,
    this.height = 0,
    this.url = "",
    this.downloadUrl = "",
  });

  factory PhotoDto.fromJson(Map<String, dynamic> json) {
    return PhotoDto(
      id: json["id"],
      author: json["author"],
      width: json["width"],
      height: json["height"],
      url: json["url"],
      downloadUrl: json["download_url"],
    );
  }
}
