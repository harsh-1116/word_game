class Message{
  final String message;
  final String senderUserName;
  final DateTime sentAt;

  Message({
    required this.message,
    required this.senderUserName,
    required this.sentAt
});
  factory Message.fromJson( Map<String, dynamic> message){
    return Message(
      message: message['message'],
      senderUserName: message['senderUsername'],
      sentAt: DateTime.fromMillisecondsSinceEpoch(message['sentAt'] * 1000)
    );
  }

}