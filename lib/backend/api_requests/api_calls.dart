import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetInvitedFriendsCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getInvitedFriends',
      apiUrl: 'getInvitedFriends',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
