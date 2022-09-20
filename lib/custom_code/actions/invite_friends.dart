// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future inviteFriends(
  DocumentReference? authUserRef,
  DocumentReference? invitedFriendRef,
) async {
  // Add your function code here!
  authUserRef!.update({
    'invitedFriends': FieldValue.arrayUnion([invitedFriendRef!.id]),
    'singleChatUsers': FieldValue.arrayUnion([invitedFriendRef.id]),
  });
  invitedFriendRef.update({
    'recievedInvitedFriends': FieldValue.arrayUnion([authUserRef.id]),
    'singleChatUsers': FieldValue.arrayUnion([authUserRef.id]),
  });
}
