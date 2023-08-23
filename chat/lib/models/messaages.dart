import 'package:chat/wedgit/constant.dart';

class Massages {
  final String messages;
  final String id;
  Massages(this.messages, this.id);

  factory Massages.fromJson(jsondata) {
    return Massages(jsondata[KMessage], jsondata['id']);
  }
}
