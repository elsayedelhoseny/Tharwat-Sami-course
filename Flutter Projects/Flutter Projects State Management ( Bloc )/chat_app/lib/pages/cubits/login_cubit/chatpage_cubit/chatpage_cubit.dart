import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/models/message.dart';
import 'package:scholar_chat/pages/cubits/login_cubit/chatpage_cubit/chatpage_states.dart';

class ChatPageCubit extends Cubit<ChatPageStates> {
  ChatPageCubit() : super(ChatPageInitial());
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
       List<Message> messagesList=[];
  void sendMessage({required String message, required String email}) {
    try {
  messages.add(
    {kMessage: message, kCreatedAt: DateTime.now(), 'id': email},
  );
} on Exception catch (e) {
  // TODO
}
  }

  void getMessage(){
messages.orderBy(kCreatedAt, descending: true).snapshots().listen((event) {
 for (var doc in event.docs) {
   messagesList.add(
    Message.fromJson(doc)
   );
 }
  emit(ChatPageSuccess(messages: messagesList));
});
  }
}
