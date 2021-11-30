import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/models/chat_item_model.dart';
import 'package:watinplus/models/chat_model.dart';
import 'package:watinplus/models/contact_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../size_config.dart';

class Chat_item_page extends StatefulWidget {
  @override
  _Chat_item_pageState createState() => _Chat_item_pageState();
}
class _Chat_item_pageState extends State<Chat_item_page> {
  String currentUser = '1';
  String pairId = '2';
  List<ChatItemModel> chatItems = ChatItemModel.list;

  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User singedUser;
  String? messageText;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<chatModel> list = [
      chatModel(contact: ContactModel(name: S.of(context).Art4_design)),
      chatModel(contact: ContactModel(name: S.of(context).Art4_marketing)),
      chatModel(contact: ContactModel(name: S.of(context).Art4_content)),
      chatModel(contact: ContactModel(name: S.of(context).Art4_video)),
      chatModel(contact: ContactModel(name: S.of(context).Art4_programing)),
      chatModel(contact: ContactModel(name: S.of(context).Art4_administration)),
      chatModel(contact: ContactModel(name: S.of(context).Art4_engineering)),
    ];
    chatModel currentchat = list.elementAt(0);
    return Scaffold(
      backgroundColor: HexColor('#FFFFFF'),
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        title: Text(
          '${currentchat.contact.name}',
          style: TextStyle(
              fontFamily: 'Ooredo',
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig().scaleTextFont(14),
              color: HexColor('#ffffff')),
        ),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        Expanded(
            child: ListView.builder(
                reverse: true,
                itemCount: chatItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Row(
                      mainAxisAlignment:
                          chatItems[index].senderId == currentUser
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                      children: [
                        _isFirstMessage(chatItems, index) &&
                                chatItems[index].senderId == pairId
                            ? Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    image: DecorationImage(
                                        image:
                                            ExactAssetImage('images/44.png'))),
                              )
                            : Container(height: 30, width: 30),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * .7),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    _isFirstMessage(chatItems, index) ? 0 : 10),
                                bottomLeft: Radius.circular(
                                    _isLastMessage(chatItems, index) ? 0 : 10),
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: chatItems[index].senderId == currentUser
                                  ? HexColor('#019BE1')
                                  : Colors.black),
                          child: Text(
                            '${chatItems[index].message}',
                            style: TextStyle(
                                fontFamily: 'Ooredo',
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig().scaleTextFont(12),
                                color: HexColor('#ffffff')),
                          ),
                        ),
                      ],
                    ),
                  );
                }))
      ]),
      bottomNavigationBar:_buildInput(),
    );
  }

  Widget _buildInput() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: HexColor('#019BE1'),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.attach_file),
              color: HexColor('#ffffff'),
            ),
            Expanded(
                child: TextField(
                  onChanged: (value) {
                    messageText = value;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'اكتب رسالة',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Ooredo',
                        fontWeight: FontWeight.w800,
                        color: HexColor('#ffffff')),
                  ),
                )),
            IconButton(
                onPressed: () {
                  _firestore.collection('messages').add({
                    'text':messageText,
                    'sender':'ali'
                  });
                },
                icon: Icon(
                  Icons.send,
                  color: HexColor('#ffffff'),
                )),
          ]),
    );
  }
  _isFirstMessage(List<ChatItemModel> chatItems, int index) {
    return chatItems[index].senderId !=
            chatItems[index - 1 < 0 ? 0 : index - 1].senderId ||
        index == 0;
  }
  _isLastMessage(List<ChatItemModel> chatItems, int index) {
    int maxItem = chatItems.length - 1;
    return (chatItems[index].senderId !=
            chatItems[index + 1 > maxItem ? maxItem : index + 1].senderId) ||
        index == maxItem;
  }

}
