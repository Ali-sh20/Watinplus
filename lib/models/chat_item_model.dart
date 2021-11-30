class ChatItemModel {
  final String senderId;
  final String message;
  ChatItemModel({
    required this.senderId,
    required this.message
});
  static List<ChatItemModel>list=[
    ChatItemModel(senderId: '1', message: 'Hi ali'),
    ChatItemModel(senderId: '1', message: 'sure we can'),
    ChatItemModel(senderId: '1', message: 'Hi ali'),
    ChatItemModel(senderId: '2', message: 'i d like'),
    ChatItemModel(senderId: '2', message: 'Are you available'),
    ChatItemModel(senderId: '2', message: 'Hi'),
  ];
}