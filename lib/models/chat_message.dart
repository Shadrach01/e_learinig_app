// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChatMessage {
  final String id;
  final String senderId;
  final String receiverId;
  final String courseId;
  final String message;
  final DateTime timeStamp;
  final bool isRead;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.courseId,
    required this.message,
    required this.timeStamp,
    this.isRead = false,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      ChatMessage(
        id: json['id'],
        senderId: json['senderId'],
        receiverId: json['receiverId'],
        courseId: json['courseId'],
        message: json['message'],
        timeStamp: DateTime.parse(json['timeStamp']),
        isRead: json['isRead'],
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'senderId': senderId,
    'receiverId': receiverId,
    'courseId': courseId,
    'message': message,
    'timeStamp': timeStamp.toIso8601String(),
    'isRead': isRead,
  };
}
