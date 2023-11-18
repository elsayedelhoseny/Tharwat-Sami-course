import 'package:scholar_chat/models/message.dart';

abstract class ChatPageStates{}

class ChatPageInitial extends ChatPageStates {}

class ChatPageSuccess extends ChatPageStates {
List<Message> messages;
ChatPageSuccess({required this.messages});
}
