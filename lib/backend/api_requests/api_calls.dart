import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start AuthApi Group Code

class AuthApiGroup {
  static String getBaseUrl() =>
      'https://3000-idx-fiyat-app-backend-1745096031624.cluster-oayqgyglpfgseqclbygurw4xd4.cloudworkstations.dev';
  static Map<String, String> headers = {};
  static LoginApiCall loginApiCall = LoginApiCall();
  static UserRegisterApiCall userRegisterApiCall = UserRegisterApiCall();
  static BusinessRegisterApiCall businessRegisterApiCall =
      BusinessRegisterApiCall();
  static AdminRegisterApiCall adminRegisterApiCall = AdminRegisterApiCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static ResetpasswordotpCall resetpasswordotpCall = ResetpasswordotpCall();
}

class LoginApiCall {
  Future<ApiCallResponse> call({
    String? email = 'email',
    String? password = 'password',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
"email":"${escapeStringForJson(email)}",
"password":"${escapeStringForJson(password)}"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login api',
      apiUrl: '${baseUrl}/api/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.createdAt''',
      ));
  List? fcmTokens(dynamic response) => getJsonField(
        response,
        r'''$.data.user.fcmTokens''',
        true,
      ) as List?;
  List? verificationDocs(dynamic response) => getJsonField(
        response,
        r'''$.data.user.verificationDocs''',
        true,
      ) as List?;
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.status''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.email''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.user''',
      );
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.accessToken''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? accessTokenExpiresIn(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.accessTokenExpiresIn''',
      ));
  String? userrole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.role''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.updatedAt''',
      ));
  String? phoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.phoneNumber''',
      ));
  String? businessName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.businessName''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.uid''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.refreshToken''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? contactPersonName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.user.contactPersonName''',
      ));
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  String? displayName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.displayName''',
      ));
  List? wishlist(dynamic response) => getJsonField(
        response,
        r'''$.data.user.wishlist''',
        true,
      ) as List?;
  List? searchHistory(dynamic response) => getJsonField(
        response,
        r'''$.data.user.searchHistory''',
        true,
      ) as List?;
  dynamic preferences(dynamic response) => getJsonField(
        response,
        r'''$.data.user.preferences''',
      );
  int? loyaltyPoints(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.user.loyaltyPoints''',
      ));
  bool? isBlocked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.user.isBlocked''',
      ));
}

class UserRegisterApiCall {
  Future<ApiCallResponse> call({
    String? displayName = '',
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "displayName": "${escapeStringForJson(displayName)}",
"email":
"${escapeStringForJson(email)}",
"password":
"${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'user register api',
      apiUrl: '${baseUrl}/api/auth/register/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? detailslocation(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsmsg(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsvalue(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailstype(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? details(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? detailspath(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.createdAt''',
      ));
  String? displayName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.displayName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.email''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.uid''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.user''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class BusinessRegisterApiCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? phoneNumber = '',
    String? businessName = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{

"email":"${escapeStringForJson(email)}",

"businessName":
"${escapeStringForJson(businessName)}",
"phoneNumber":
"${escapeStringForJson(phoneNumber)}",
"password":
"${escapeStringForJson(password)}"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'business register api',
      apiUrl: '${baseUrl}/api/auth/register/business',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? detailslocation(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailspath(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsmsg(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsvalue(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailstype(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? details(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.createdAt''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.status''',
      ));
  String? businessName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.businessName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.email''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.uid''',
      ));
  dynamic business(dynamic response) => getJsonField(
        response,
        r'''$.data.business''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AdminRegisterApiCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? displayName = '',
    String? password = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
"email":
"${escapeStringForJson(email)}",
"displayName":

"${escapeStringForJson(displayName)}",
"password":
"${escapeStringForJson(password)}"




}''';
    return ApiManager.instance.makeApiCall(
      callName: 'admin register api',
      apiUrl: '${baseUrl}/api/auth/register/admin',
      callType: ApiCallType.POST,
      headers: {
        'X-Admin-Secret': 'GuvEnli_Secr3t-Key_12!_XYZ.987',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? detailslocation(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailspath(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsmsg(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsvalue(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailstype(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? details(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.admin.createdAt''',
      ));
  String? displayName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.admin.displayName''',
      ));
  bool? isActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.admin.isActive''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.admin.role''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.admin.email''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.admin.uid''',
      ));
  dynamic admin(dynamic response) => getJsonField(
        response,
        r'''$.data.admin''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgot password',
      apiUrl: '${baseUrl}/api/auth/forgot-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ResetpasswordotpCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? code = '',
    String? newPassword = '',
  }) async {
    final baseUrl = AuthApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "code": "${escapeStringForJson(code)}",
"newPassword": "${escapeStringForJson(newPassword)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resetpasswordotp',
      apiUrl: '${baseUrl}/api/auth/reset-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? detailslocation(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? detailspath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? detailsmsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? detailsvalue(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? detailstype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].type''',
      ));
  List? details(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End AuthApi Group Code

/// Start BusinessAP Group Code

class BusinessAPGroup {
  static String getBaseUrl() =>
      'https://3000-idx-fiyat-app-backend-1745096031624.cluster-oayqgyglpfgseqclbygurw4xd4.cloudworkstations.dev';
  static Map<String, String> headers = {};
  static HotelsAddCall hotelsAddCall = HotelsAddCall();
}

class HotelsAddCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? street = '',
    String? city = '',
    String? region = '',
    String? country = '',
    int? postalCode,
    double? latitude,
    double? longitude,
    double? starRating,
    String? hotelType = '',
    String? concept = '',
    String? amenities = '',
    String? images = '',
    String? thumbnailUrl = '',
    int? phone,
    String? email = '',
    String? website = '',
    String? checkInTime = '',
    String? checkOutTime = '',
    String? cancellation = '',
    String? childPolicy = '',
    String? petPolicy = '',
    String? tags = '',
    double? minPricePerNight,
    String? authToken = '',
  }) async {
    final baseUrl = BusinessAPGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "description": "${escapeStringForJson(description)}",
  "address": {
    "street": "${escapeStringForJson(street)}",
    "city": "${escapeStringForJson(city)}",
    "region": "${escapeStringForJson(region)}",
    "country": "${escapeStringForJson(country)}",
    "postalCode": ${postalCode}
  },
  "latitude": ${latitude},
  "longitude": ${longitude},
  "starRating": ${starRating},
  "hotelType": "${escapeStringForJson(hotelType)}",
  "concept": "${escapeStringForJson(concept)}",
  "amenities": [
    "${escapeStringForJson(amenities)}"
  ],
  "images": [
    "${escapeStringForJson(images)}"
  ],
  "thumbnailUrl": "${escapeStringForJson(thumbnailUrl)}",
  "contactInfo": {
    "phone": ${phone},
    "email": "${escapeStringForJson(email)}",
    "website": "${escapeStringForJson(website)}"
  },
  "checkInTime": "${escapeStringForJson(checkInTime)}",
  "checkOutTime": "${escapeStringForJson(checkOutTime)}",
  "policies": {
    "cancellation": "${escapeStringForJson(cancellation)}",
    "childPolicy": "${escapeStringForJson(childPolicy)}",
    "petPolicy": "${escapeStringForJson(petPolicy)}"
  },
  "tags": [
    "${escapeStringForJson(tags)}"
  ],
  "minPricePerNight": ${minPricePerNight}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'HotelsAdd',
      apiUrl: '${baseUrl}/api/hotels',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  List<String>? detailslocation(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailspath(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsmsg(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailsvalue(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? detailstype(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? details(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? businessOwnerUid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.businessOwnerUid''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.createdAt''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.status''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.id''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic hotel(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End BusinessAP Group Code

/// Start AdminPanelApi Group Code

class AdminPanelApiGroup {
  static String getBaseUrl() =>
      'https://3000-idx-fiyat-app-backend-1745096031624.cluster-oayqgyglpfgseqclbygurw4xd4.cloudworkstations.dev';
  static Map<String, String> headers = {};
  static UsersapiCall usersapiCall = UsersapiCall();
  static BusinessOnaylamaCall businessOnaylamaCall = BusinessOnaylamaCall();
  static OtelOnaylamaCall otelOnaylamaCall = OtelOnaylamaCall();
  static AdminPanelCall adminPanelCall = AdminPanelCall();
  static BusinessKullancCall businessKullancCall = BusinessKullancCall();
}

class UsersapiCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'usersapi',
      apiUrl: '${baseUrl}/api/admin/users/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  dynamic pagination(dynamic response) => getJsonField(
        response,
        r'''$.data.pagination''',
      );
  int? totalPages(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalPages''',
      ));
}

class BusinessOnaylamaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? uid = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'business onaylama',
      apiUrl: '${baseUrl}/api/admin/businesses/${uid}/approve',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.updatedAt''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.status''',
      ));
  String? businessName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.businessName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.email''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.business.uid''',
      ));
  dynamic business(dynamic response) => getJsonField(
        response,
        r'''$.data.business''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class OtelOnaylamaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? hotelId = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'otel onaylama',
      apiUrl: '${baseUrl}/api/admin/hotels/${hotelId}/approve',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? street(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.street''',
      ));
  String? region(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.region''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.updatedAt''',
      ));
  String? businessOwnerUid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.businessOwnerUid''',
      ));
  List<String>? tags(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? reviewCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.reviewCount''',
      ));
  String? cancellation(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.policies.cancellation''',
      ));
  String? petPolicy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.policies.petPolicy''',
      ));
  String? checkOutTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.checkOutTime''',
      ));
  String? website(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.contactInfo.website''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.contactInfo.email''',
      ));
  String? thumbnailUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.thumbnailUrl''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.createdAt''',
      ));
  double? minPricePerNight(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.minPricePerNight''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.status''',
      ));
  int? averageRating(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.averageRating''',
      ));
  String? childPolicy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.policies.childPolicy''',
      ));
  dynamic policies(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.policies''',
      );
  String? checkInTime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.checkInTime''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.contactInfo.phone''',
      ));
  dynamic hotelcontactInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.contactInfo''',
      );
  List<String>? hotelimages(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? amenities(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.amenities''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? concept(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.concept''',
      ));
  String? hotelType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.hotelType''',
      ));
  double? starRating(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.starRating''',
      ));
  double? longitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.longitude''',
      ));
  double? latitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.latitude''',
      ));
  String? postalCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.postalCode''',
      ));
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.country''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.city''',
      ));
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.address''',
      );
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.description''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.id''',
      ));
  dynamic hotel(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class AdminPanelCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? adminuid = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'AdminPanel',
      apiUrl: '${baseUrl}/api/admin/admins',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'adminuid': "adminuid",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.data.admins[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data.admins[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? lastLogin(dynamic response) => getJsonField(
        response,
        r'''$.data.admins[:].lastLogin''',
        true,
      ) as List?;
  List<bool>? isActive(dynamic response) => (getJsonField(
        response,
        r'''$.data.admins[:].isActive''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? permissions(dynamic response) => getJsonField(
        response,
        r'''$.data.admins[:].permissions''',
        true,
      ) as List?;
  List<String>? role(dynamic response) => (getJsonField(
        response,
        r'''$.data.admins[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? displayName(dynamic response) => getJsonField(
        response,
        r'''$.data.admins[:].displayName''',
        true,
      ) as List?;
  List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$.data.admins[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.data.admins[:].uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? admins(dynamic response) => getJsonField(
        response,
        r'''$.data.admins''',
        true,
      ) as List?;
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class BusinessKullancCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'business kullanc',
      apiUrl: '${baseUrl}/api/admin/businesses',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data.businesses[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.data.businesses[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? fcmTokens(dynamic response) => getJsonField(
        response,
        r'''$.data.businesses[:].fcmTokens''',
        true,
      ) as List?;
  List? verificationDocs(dynamic response) => getJsonField(
        response,
        r'''$.data.businesses[:].verificationDocs''',
        true,
      ) as List?;
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data.businesses[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? phoneNumber(dynamic response) => (getJsonField(
        response,
        r'''$.data.businesses[:].phoneNumber''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? contactPersonName(dynamic response) => getJsonField(
        response,
        r'''$.data.businesses[:].contactPersonName''',
        true,
      ) as List?;
  List<String>? businessName(dynamic response) => (getJsonField(
        response,
        r'''$.data.businesses[:].businessName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$.data.businesses[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.data.businesses[:].uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? businesses(dynamic response) => getJsonField(
        response,
        r'''$.data.businesses''',
        true,
      ) as List?;
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic pagination(dynamic response) => getJsonField(
        response,
        r'''$.data.pagination''',
      );
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.currentPage''',
      ));
  int? totalPages(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalPages''',
      ));
  int? totalItems(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalItems''',
      ));
  int? limit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.limit''',
      ));
}

/// End AdminPanelApi Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
