class Article {
  int id;
  String title;

  Article({this.id = 0, this.title = ""});

  /**
   * Pour mapper du Json en Article
   */
  static Article fromJson(Map<String, dynamic> json) {
    return Article(id: json['id'], title: json['title']);
  }
}
