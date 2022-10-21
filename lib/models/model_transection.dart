class ModelTransection {
  String id;
  String title;
  String transectionType;
  double amount;
  DateTime date;

  ModelTransection({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.transectionType,
  });

  factory ModelTransection.fromJson(Map<String, dynamic> json) {
    return ModelTransection(
      id: json['id'],
      title: json['title'],
      transectionType: json['transectionType'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
    );
  }
}
