class ExploreModel {
  int? id;
  List<Answers>? answers;
  String? question;
  String? createdAt;
  bool? deleted;

  ExploreModel(
      {this.id, this.answers, this.question, this.createdAt, this.deleted});

  ExploreModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['answers'] != null) {
      answers = <Answers>[];
      json['answers'].forEach((v) {
        answers!.add(new Answers.fromJson(v));
      });
    }
    question = json['question'];
    createdAt = json['created_at'];
    deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.answers != null) {
      data['answers'] = this.answers!.map((v) => v.toJson()).toList();
    }
    data['question'] = this.question;
    data['created_at'] = this.createdAt;
    data['deleted'] = this.deleted;
    return data;
  }
}

class Answers {
  int? id;
  String? answer;
  String? createdAt;
  bool? deleted;
  int? faq;

  Answers({this.id, this.answer, this.createdAt, this.deleted, this.faq});

  Answers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    answer = json['answer'];
    createdAt = json['created_at'];
    deleted = json['deleted'];
    faq = json['faq'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['answer'] = this.answer;
    data['created_at'] = this.createdAt;
    data['deleted'] = this.deleted;
    data['faq'] = this.faq;
    return data;
  }
}