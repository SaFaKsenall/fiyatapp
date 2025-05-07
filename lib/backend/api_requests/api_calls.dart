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
  static RezervasyonOnaylamaCall rezervasyonOnaylamaCall =
      RezervasyonOnaylamaCall();
  static OdaTipiEklemeCall odaTipiEklemeCall = OdaTipiEklemeCall();
  static RezervasyonReddetmeCall rezervasyonReddetmeCall =
      RezervasyonReddetmeCall();
  static RezervasyonTamamlandiCall rezervasyonTamamlandiCall =
      RezervasyonTamamlandiCall();
  static OtellerimCall otellerimCall = OtellerimCall();
  static RezervasyonlarCall rezervasyonlarCall = RezervasyonlarCall();
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

class RezervasyonOnaylamaCall {
  Future<ApiCallResponse> call({
    String? bookingId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BusinessAPGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rezervasyon onaylama',
      apiUrl: '${baseUrl}/api/businesses/bookings/${bookingId}/confirm',
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

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.user.email''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.updatedAt''',
      ));
  String? hotelName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelName''',
      ));
  String? hotelId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelId''',
      ));
  String? specialRequests(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.specialRequests''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.status''',
      ));
  int? totalPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.totalPrice''',
      ));
  int? children(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.children''',
      ));
  dynamic numberOfGuests(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.numberOfGuests''',
      );
  String? checkOutDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkOutDate''',
      ));
  String? checkInDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkInDate''',
      ));
  String? bookedItemType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookedItemType''',
      ));
  String? bookingReference(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookingReference''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.id''',
      ));
  dynamic booking(dynamic response) => getJsonField(
        response,
        r'''$.data.booking''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? numberOfNights(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfNights''',
      ));
  int? adults(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.adults''',
      ));
  List? guestInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.guestInfo''',
        true,
      ) as List?;
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.currency''',
      ));
  String? paymentStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.paymentStatus''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.userId''',
      ));
  String? businessOwnerUid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.businessOwnerUid''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.createdAt''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.user''',
      );
  dynamic hotel(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.hotel''',
      );
  String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
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
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].type''',
      ));
}

class OdaTipiEklemeCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    double? capacity,
    String? type = '',
    double? count,
    double? sizeSqm,
    String? amenities = '',
    String? images = '',
    double? basePricePerNight,
    double? totalRoomsOfType,
    String? authToken = '',
    String? hotelId = '',
  }) async {
    final baseUrl = BusinessAPGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "description": "${escapeStringForJson(description)}",
  "capacity": ${capacity},
  "beds": [
    {
      "type": "${escapeStringForJson(type)}",
      "count": ${count}
    }
  ],
  "sizeSqm": ${sizeSqm},
  "amenities": [
    "${escapeStringForJson(amenities)}"
  ],
  "images": [
    "${escapeStringForJson(images)}"
  ],
  "basePricePerNight": ${basePricePerNight},
  "totalRoomsOfType": ${totalRoomsOfType}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'oda tipi ekleme',
      apiUrl: '${baseUrl}/api/hotels/${hotelId}/room-types',
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

  List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? path(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? value(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
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
  List? roomTypes(dynamic response) => getJsonField(
        response,
        r'''$.data.roomTypes''',
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

class RezervasyonReddetmeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? bookingId = '',
  }) async {
    final baseUrl = BusinessAPGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rezervasyon reddetme',
      apiUrl: '${baseUrl}/api/businesses/bookings/${bookingId}/cancel',
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

  dynamic numberOfGuests(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.numberOfGuests''',
      );
  int? numberOfNights(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfNights''',
      ));
  String? checkOutDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkOutDate''',
      ));
  String? checkInDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkInDate''',
      ));
  String? bookedItemType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookedItemType''',
      ));
  String? bookingReference(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookingReference''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.id''',
      ));
  dynamic booking(dynamic response) => getJsonField(
        response,
        r'''$.data.booking''',
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
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.user.email''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.user''',
      );
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.updatedAt''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.createdAt''',
      ));
  String? hotelName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelName''',
      ));
  String? businessOwnerUid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.businessOwnerUid''',
      ));
  String? hotelId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelId''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.userId''',
      ));
  String? specialRequests(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.specialRequests''',
      ));
  String? paymentStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.paymentStatus''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.status''',
      ));
  dynamic hotel(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.hotel''',
      );
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.currency''',
      ));
  int? totalPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.totalPrice''',
      ));
  List? guestInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.guestInfo''',
        true,
      ) as List?;
  int? databookingnumberOfGuestschildren(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.children''',
      ));
  int? databookingnumberOfGuestsadults(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.adults''',
      ));
}

class RezervasyonTamamlandiCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? bookingId = '',
  }) async {
    final baseUrl = BusinessAPGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rezervasyon tamamlandi',
      apiUrl: '${baseUrl}/api/businesses/bookings/${bookingId}/complete',
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

  String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
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
  String? databookinguseremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.user.email''',
      ));
  String? databookingupdatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.updatedAt''',
      ));
  String? databookinghotelName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelName''',
      ));
  String? databookingbusinessOwnerUid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.businessOwnerUid''',
      ));
  String? databookinghotelId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelId''',
      ));
  String? databookinguserId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.userId''',
      ));
  String? databookingcreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.createdAt''',
      ));
  String? databookingspecialRequests(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.specialRequests''',
      ));
  String? databookingpaymentStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.paymentStatus''',
      ));
  String? databookingstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.status''',
      ));
  String? databookinghotelname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.name''',
      ));
  dynamic databookinghotel(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.hotel''',
      );
  dynamic databookinguser(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.user''',
      );
  String? databookingcurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.currency''',
      ));
  int? databookingtotalPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.totalPrice''',
      ));
  List? databookingguestInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.guestInfo''',
        true,
      ) as List?;
  int? databookingnumberOfGuestschildren(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.children''',
      ));
  int? numberOfGuests(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.adults''',
      ));
  String? databookingcheckInDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkInDate''',
      ));
  String? bookedItemType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookedItemType''',
      ));
  String? databookingbookingReference(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookingReference''',
      ));
  String? databookingid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.id''',
      ));
  dynamic databooking(dynamic response) => getJsonField(
        response,
        r'''$.data.booking''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic databookingnumberOfGuests(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.numberOfGuests''',
      );
  int? databookingnumberOfNights(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfNights''',
      ));
  String? databookingcheckOutDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkOutDate''',
      ));
}

class OtellerimCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = BusinessAPGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'otellerim',
      apiUrl: '${baseUrl}/api/hotels/my',
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

  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
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
  List<String>? datahotelsaddresscity(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? datahotelsaddress(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:].address''',
        true,
      ) as List?;
  List<String>? datahotelsthumbnailUrl(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].thumbnailUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddressregion(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.region''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddressstreet(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.street''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? datapaginationlimit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.limit''',
      ));
  int? datapaginationtotalPages(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalPages''',
      ));
  dynamic datapagination(dynamic response) => getJsonField(
        response,
        r'''$.data.pagination''',
      );
  List<int>? datahotelscountroomTypes(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:]._count.roomTypes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? datahotelscount(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:]._count''',
        true,
      ) as List?;
  List<String>? datahotelsconcept(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].concept''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelshotelType(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].hotelType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsupdatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelscreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? datahotelsreviewCount(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].reviewCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? datahotelsaverageRating(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].averageRating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? datahotelsstarRating(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].starRating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  int? datapaginationcurrentPage(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.currentPage''',
      ));
  int? datapaginationtotalItems(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalItems''',
      ));
  List<String>? datahotelsaddresspostalCode(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.postalCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddresscountry(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsstatus(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsname(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsid(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? datahotels(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels''',
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

class RezervasyonlarCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = BusinessAPGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rezervasyonlar',
      apiUrl: '${baseUrl}/api/business/bookings',
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

  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
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
}

/// End BusinessAP Group Code

/// Start AdminPanelApi Group Code

class AdminPanelApiGroup {
  static String getBaseUrl() =>
      'https://3000-idx-fiyat-app-backend-1745096031624.cluster-oayqgyglpfgseqclbygurw4xd4.cloudworkstations.dev';
  static Map<String, String> headers = {};
  static UserKullanicilarCall userKullanicilarCall = UserKullanicilarCall();
  static BusinessOnaylamaCall businessOnaylamaCall = BusinessOnaylamaCall();
  static OtelOnaylamaCall otelOnaylamaCall = OtelOnaylamaCall();
  static AdminKullanicilarCall adminKullanicilarCall = AdminKullanicilarCall();
  static BusinessKullancilarCall businessKullancilarCall =
      BusinessKullancilarCall();
  static OtellerCall otellerCall = OtellerCall();
  static OtelleAlakaliTumBilgilerCall otelleAlakaliTumBilgilerCall =
      OtelleAlakaliTumBilgilerCall();
  static TumRezervasyonlarCall tumRezervasyonlarCall = TumRezervasyonlarCall();
  static IdGoreRezervasyonCall idGoreRezervasyonCall = IdGoreRezervasyonCall();
  static AdminOtlleriIdYeGoreCall adminOtlleriIdYeGoreCall =
      AdminOtlleriIdYeGoreCall();
}

class UserKullanicilarCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'user kullanicilar',
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

class AdminKullanicilarCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? adminuid = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin kullanicilar',
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

class BusinessKullancilarCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'business kullancilar',
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

class OtellerCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Oteller',
      apiUrl: '${baseUrl}/api/hotels',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OtelleAlakaliTumBilgilerCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'otelle alakali tum bilgiler',
      apiUrl: '${baseUrl}/api/admin/hotels',
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

  int? datapaginationlimit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.limit''',
      ));
  int? datapaginationtotalPages(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalPages''',
      ));
  dynamic datapagination(dynamic response) => getJsonField(
        response,
        r'''$.data.pagination''',
      );
  List? datahotelstags(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:].tags''',
        true,
      ) as List?;
  List<double>? datahotelsminPricePerNight(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].minPricePerNight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? datahotelsaverageRating(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].averageRating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsconcept(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].concept''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? datahotelsstarRating(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].starRating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddresscountry(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddressregion(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.region''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? datahotelsaddress(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:].address''',
        true,
      ) as List?;
  int? datapaginationtotalItems(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalItems''',
      ));
  List<String>? datahotelsstatus(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? datahotelsamenities(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:].amenities''',
        true,
      ) as List?;
  List<int>? datahotelsreviewCount(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].reviewCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsthumbnailUrl(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].thumbnailUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelshotelType(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].hotelType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? datapaginationcurrentPage(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.currentPage''',
      ));
  List<String>? datahotelsaddresspostalCode(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.postalCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddressstreet(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.street''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddresscity(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsname(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsid(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? datahotels(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels''',
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
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class TumRezervasyonlarCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tum rezervasyonlar',
      apiUrl: '${baseUrl}/api/admin/bookings',
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

  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
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
  int? datapaginationlimit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.limit''',
      ));
  int? datapaginationtotalPages(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalPages''',
      ));
  dynamic datapagination(dynamic response) => getJsonField(
        response,
        r'''$.data.pagination''',
      );
  List<String>? databookingsuseremail(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].user.email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? databookingsuser(dynamic response) => getJsonField(
        response,
        r'''$.data.bookings[:].user''',
        true,
      ) as List?;
  List<String>? databookingshotelid(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].hotel.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingscreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? databookingstotalPrice(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].totalPrice''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? databookingscheckOutDate(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].checkOutDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingscheckInDate(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].checkInDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingspaymentStatus(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].paymentStatus''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingsstatus(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingsbookingReference(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].bookingReference''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingsid(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingscurrency(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].currency''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? databookingshotel(dynamic response) => getJsonField(
        response,
        r'''$.data.bookings[:].hotel''',
        true,
      ) as List?;
  List<String>? databookingshotelname(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].hotel.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? databookingsuseruid(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].user.uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? databookingsuserdisplayName(dynamic response) => getJsonField(
        response,
        r'''$.data.bookings[:].user.displayName''',
        true,
      ) as List?;
  int? datapaginationcurrentPage(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.currentPage''',
      ));
  int? datapaginationtotalItems(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalItems''',
      ));
  List? databookings(dynamic response) => getJsonField(
        response,
        r'''$.data.bookings''',
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

class IdGoreRezervasyonCall {
  Future<ApiCallResponse> call({
    String? bookingId = '',
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'id gore rezervasyon',
      apiUrl: '${baseUrl}/api/admin/bookings/${bookingId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'bookingId': bookingId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errordetailslocation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? errordetailspath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? errordetailsmsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? errordetailsvalue(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? errordetailstype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].type''',
      ));
  List? errordetails(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
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
  List? databookingsuser(dynamic response) => getJsonField(
        response,
        r'''$.data.bookings[:].user''',
        true,
      ) as List?;
  List<String>? databookingshotelname(dynamic response) => (getJsonField(
        response,
        r'''$.data.bookings[:].hotel.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? databookingbusinessOwneremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.businessOwner.email''',
      ));
  String? databookingbusinessOwnerbusinessName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.businessOwner.businessName''',
      ));
  String? databookingbusinessOwneruid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.businessOwner.uid''',
      ));
  dynamic databookingbusinessOwner(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.businessOwner''',
      );
  String? databookinghotelcontactInfowebsite(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.contactInfo.website''',
      ));
  String? databookinghotelcontactInfophone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.contactInfo.phone''',
      ));
  String? databookinghotelcontactInfoemail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.contactInfo.email''',
      ));
  dynamic databookinghotelcontactInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.hotel.contactInfo''',
      );
  String? databookinghotelthumbnailUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.thumbnailUrl''',
      ));
  String? databookinghotelname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.name''',
      ));
  String? databookinghotelid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.id''',
      ));
  dynamic databookinghotel(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.hotel''',
      );
  String? databookinguseremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.user.email''',
      ));
  String? databookinguseruid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.user.uid''',
      ));
  dynamic databookinguser(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.user''',
      );
  String? databookingupdatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.updatedAt''',
      ));
  String? databookingcreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.createdAt''',
      ));
  String? databookinghotelName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelName''',
      ));
  String? databookingbusinessOwnerUid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.businessOwnerUid''',
      ));
  String? databookinghotelId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotelId''',
      ));
  String? databookinguserId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.userId''',
      ));
  String? databookingspecialRequests(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.specialRequests''',
      ));
  String? databookingpaymentStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.paymentStatus''',
      ));
  String? databookingstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.status''',
      ));
  String? databookingcurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.currency''',
      ));
  int? databookingtotalPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.totalPrice''',
      ));
  List? databookingguestInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.guestInfo''',
        true,
      ) as List?;
  int? databookingnumberOfGuestschildren(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.children''',
      ));
  int? databookingnumberOfGuestsadults(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfGuests.adults''',
      ));
  dynamic databookingnumberOfGuests(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.numberOfGuests''',
      );
  int? databookingnumberOfNights(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfNights''',
      ));
  String? databookingcheckOutDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkOutDate''',
      ));
  String? databookingcheckInDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkInDate''',
      ));
  String? databookingbookedItemType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookedItemType''',
      ));
  String? databookingbookingReference(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookingReference''',
      ));
  String? databookingid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.id''',
      ));
  dynamic databooking(dynamic response) => getJsonField(
        response,
        r'''$.data.booking''',
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

class AdminOtlleriIdYeGoreCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
    String? authToken = '',
  }) async {
    final baseUrl = AdminPanelApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'admin otlleri id ye gore',
      apiUrl: '${baseUrl}/api/admin/hotels/${hotelId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'hotelId': hotelId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? datapaginationlimit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.limit''',
      ));
  int? datapaginationtotalPages(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalPages''',
      ));
  dynamic datapagination(dynamic response) => getJsonField(
        response,
        r'''$.data.pagination''',
      );
  List? datahotelstags(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:].tags''',
        true,
      ) as List?;
  List<double>? datahotelsminPricePerNight(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].minPricePerNight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? datahotelsaverageRating(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].averageRating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsconcept(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].concept''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? datahotelsstarRating(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].starRating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddresscountry(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddressregion(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.region''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? datahotelsaddress(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:].address''',
        true,
      ) as List?;
  List<String>? datahotelsstatus(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? datahotelsreviewCount(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].reviewCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsthumbnailUrl(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].thumbnailUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelshotelType(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].hotelType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddresspostalCode(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.postalCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsaddressstreet(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.street''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? datapaginationcurrentPage(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.currentPage''',
      ));
  int? datapaginationtotalItems(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalItems''',
      ));
  List<String>? datahotelsaddresscity(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].address.city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelsname(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? datahotels(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels''',
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
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? datahotelsid(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? datahotelbusinessOwnerphoneNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.businessOwner.phoneNumber''',
      ));
  String? datahotelbusinessOwneremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.businessOwner.email''',
      ));
  String? datahotelbusinessOwnerbusinessName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.businessOwner.businessName''',
      ));
  String? datahotelbusinessOwneruid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.businessOwner.uid''',
      ));
  dynamic datahotelbusinessOwner(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.businessOwner''',
      );
  List? datahotelroomTypes(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.roomTypes''',
        true,
      ) as List?;
  String? datahotelupdatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.updatedAt''',
      ));
  String? datahotelcreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.createdAt''',
      ));
  String? datahotelbusinessOwnerUid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.businessOwnerUid''',
      ));
  double? datahotelminPricePerNight(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.minPricePerNight''',
      ));
  List<String>? datahoteltags(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? datahotelstatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.status''',
      ));
  int? datahotelreviewCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.reviewCount''',
      ));
  int? datahotelaverageRating(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.averageRating''',
      ));
  String? datahotelpoliciescancellation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.policies.cancellation''',
      ));
  String? datahotelpolicieschildPolicy(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.policies.childPolicy''',
      ));
  String? datahotelpoliciespetPolicy(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.policies.petPolicy''',
      ));
  dynamic datahotelpolicies(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.policies''',
      );
  String? datahotelcheckOutTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.checkOutTime''',
      ));
  String? datahotelcheckInTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.checkInTime''',
      ));
  String? datahotelcontactInfowebsite(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.contactInfo.website''',
      ));
  String? datahotelcontactInfophone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.contactInfo.phone''',
      ));
  String? datahotelcontactInfoemail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.contactInfo.email''',
      ));
  dynamic datahotelcontactInfo(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.contactInfo''',
      );
  String? datahotelthumbnailUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.thumbnailUrl''',
      ));
  List<String>? datahotelimages(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelamenities(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.amenities''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? datahotelconcept(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.concept''',
      ));
  String? datahotelhotelType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.hotelType''',
      ));
  double? datahotelstarRating(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.starRating''',
      ));
  double? datahotellongitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.longitude''',
      ));
  double? datahotellatitude(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data.hotel.latitude''',
      ));
  String? datahoteldescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.description''',
      ));
  dynamic datahoteladdress(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.address''',
      );
  String? datahoteladdresscity(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.city''',
      ));
  String? datahoteladdressregion(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.region''',
      ));
  String? datahoteladdressstreet(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.street''',
      ));
  String? datahoteladdresscountry(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.country''',
      ));
  String? datahoteladdresspostalCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.address.postalCode''',
      ));
  String? datahotelname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.name''',
      ));
  String? datahotelid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.id''',
      ));
  dynamic datahotel(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel''',
      );
  String? errordetailslocation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? errordetailspath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? errordetailsmsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? errordetailsvalue(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? errordetailstype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].type''',
      ));
  List? errordetails(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  int? datahotelroomTypessizeSqm(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].sizeSqm''',
      ));
  int? datahotelroomTypesbedscount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].beds[:].count''',
      ));
  String? datahotelroomTypesbedstype(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].beds[:].type''',
      ));
  List? datahotelroomTypesbeds(dynamic response) => getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].beds''',
        true,
      ) as List?;
  String? datahotelroomTypesdescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].description''',
      ));
  List<String>? datahotelroomTypesimages(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datahotelroomTypesamenities(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].amenities''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? datahotelroomTypesbasePricePerNight(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].basePricePerNight''',
      ));
  int? datahotelroomTypescapacity(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].capacity''',
      ));
  String? datahotelroomTypesname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].name''',
      ));
  String? datahotelroomTypesid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hotel.roomTypes[:].id''',
      ));
}

/// End AdminPanelApi Group Code

/// Start otel islemleri Group Code

class OtelIslemleriGroup {
  static String getBaseUrl() =>
      'https://3000-idx-fiyat-app-backend-1745096031624.cluster-oayqgyglpfgseqclbygurw4xd4.cloudworkstations.dev';
  static Map<String, String> headers = {};
  static RezervasyonEklemeCall rezervasyonEklemeCall = RezervasyonEklemeCall();
  static OtelOdalarniCekmeCall otelOdalarniCekmeCall = OtelOdalarniCekmeCall();
  static OdaBilgileriniCekmeCall odaBilgileriniCekmeCall =
      OdaBilgileriniCekmeCall();
  static OtelYorumlariCekmeCall otelYorumlariCekmeCall =
      OtelYorumlariCekmeCall();
  static OteleMiniImageCall oteleMiniImageCall = OteleMiniImageCall();
  static OtelfotoEklemeCall otelfotoEklemeCall = OtelfotoEklemeCall();
}

class RezervasyonEklemeCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
    String? checkInDate = '',
    String? checkOutDate = '',
    double? adults,
    double? children,
    double? totalPrice,
    String? currency = '',
    String? specialRequests = '',
    String? authToken = '',
  }) async {
    final baseUrl = OtelIslemleriGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "hotelId": "${escapeStringForJson(hotelId)}",
  "checkInDate": "${escapeStringForJson(checkInDate)}",
  "checkOutDate": "${escapeStringForJson(checkOutDate)}",
  "numberOfGuests": {
    "adults": ${adults},
    "children": ${children}
  },
  "totalPrice": ${totalPrice},
  "currency": "${escapeStringForJson(currency)}",
  "specialRequests": "${escapeStringForJson(specialRequests)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'rezervasyon ekleme',
      apiUrl: '${baseUrl}/api/bookings',
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

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? path(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? value(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
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
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.id''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.user.email''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.user''',
      );
  String? hotelid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.id''',
      ));
  String? databookinghotelname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.booking.hotel.name''',
      ));
  dynamic databookinghotel(dynamic response) => getJsonField(
        response,
        r'''$.data.booking.hotel''',
      );
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.currency''',
      ));
  int? totalPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.totalPrice''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.user.uid''',
      ));
  int? numberOfNights(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.booking.numberOfNights''',
      ));
  String? checkOutDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkOutDate''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.createdAt''',
      ));
  String? paymentStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.paymentStatus''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.status''',
      ));
  String? bookingReference(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.bookingReference''',
      ));
  dynamic booking(dynamic response) => getJsonField(
        response,
        r'''$.data.booking''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? checkInDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.booking.checkInDate''',
      ));
}

class OtelOdalarniCekmeCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
  }) async {
    final baseUrl = OtelIslemleriGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'otel odalarni cekme',
      apiUrl: '${baseUrl}/api/hotels/${hotelId}/room-types',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'hotelId': hotelId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
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
  List? roomTypes(dynamic response) => getJsonField(
        response,
        r'''$.data.roomTypes''',
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
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomTypes[:].updatedAt''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomTypes[:].createdAt''',
      ));
  String? hotelId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomTypes[:].hotelId''',
      ));
  int? totalRoomsOfType(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomTypes[:].totalRoomsOfType''',
      ));
  int? basePricePerNight(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomTypes[:].basePricePerNight''',
      ));
  List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data.roomTypes[:].images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? amenities(dynamic response) => (getJsonField(
        response,
        r'''$.data.roomTypes[:].amenities''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sizeSqm(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomTypes[:].sizeSqm''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomTypes[:].beds[:].count''',
      ));
  String? bedstype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomTypes[:].beds[:].type''',
      ));
  List? beds(dynamic response) => getJsonField(
        response,
        r'''$.data.roomTypes[:].beds''',
        true,
      ) as List?;
  int? capacity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomTypes[:].capacity''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomTypes[:].description''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomTypes[:].name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomTypes[:].id''',
      ));
}

class OdaBilgileriniCekmeCall {
  Future<ApiCallResponse> call({
    String? roomTypeId = '',
  }) async {
    final baseUrl = OtelIslemleriGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'oda bilgilerini cekme',
      apiUrl: '${baseUrl}/api/room-types/${roomTypeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'roomTypeId': roomTypeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? dataroomTypehotelname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.hotel.name''',
      ));
  String? dataroomTypehotelid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.hotel.id''',
      ));
  String? dataroomTypeupdatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.updatedAt''',
      ));
  String? dataroomTypehotelId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.hotelId''',
      ));
  int? dataroomTypebasePricePerNight(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.roomType.basePricePerNight''',
      ));
  List<String>? dataroomTypeamenities(dynamic response) => (getJsonField(
        response,
        r'''$.data.roomType.amenities''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? dataroomTypebedscount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomType.beds[:].count''',
      ));
  List? dataroomTypebeds(dynamic response) => getJsonField(
        response,
        r'''$.data.roomType.beds''',
        true,
      ) as List?;
  String? dataroomTypedescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.description''',
      ));
  String? dataroomTypeid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.id''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic dataroomType(dynamic response) => getJsonField(
        response,
        r'''$.data.roomType''',
      );
  String? dataroomTypename(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.name''',
      ));
  int? dataroomTypecapacity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomType.capacity''',
      ));
  String? dataroomTypebedstype(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.beds[:].type''',
      ));
  int? dataroomTypesizeSqm(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.roomType.sizeSqm''',
      ));
  List<String>? dataroomTypeimages(dynamic response) => (getJsonField(
        response,
        r'''$.data.roomType.images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? dataroomTypetotalRoomsOfType(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.roomType.totalRoomsOfType''',
      ));
  String? dataroomTypecreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.roomType.createdAt''',
      ));
  dynamic dataroomTypehotel(dynamic response) => getJsonField(
        response,
        r'''$.data.roomType.hotel''',
      );
  String? errordetailslocation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? errordetailspath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? errordetailsvalue(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? errordetailstype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].type''',
      ));
  List? errordetails(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  String? errordetailsmsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
}

class OtelYorumlariCekmeCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
  }) async {
    final baseUrl = OtelIslemleriGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'otel yorumlari cekme',
      apiUrl: '${baseUrl}/api/hotels/${hotelId}/reviews',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'hotelId': hotelId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].type''',
      ));
  List? details(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? erormessage(dynamic response) => castToType<String>(getJsonField(
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
}

class OteleMiniImageCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
    String? authToken = '',
  }) async {
    final baseUrl = OtelIslemleriGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'otele mini image',
      apiUrl: '${baseUrl}/api/hotels/${hotelId}/thumbnail',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'hotelId': hotelId,
      },
      bodyType: BodyType.MULTIPART,
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
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
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
}

class OtelfotoEklemeCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
    String? authToken = '',
  }) async {
    final baseUrl = OtelIslemleriGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'otelfoto ekleme',
      apiUrl: '${baseUrl}/api/hotels/${hotelId}/images',
      callType: ApiCallType.POST,
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
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
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
}

/// End otel islemleri Group Code

/// Start otelapileri Group Code

class OtelapileriGroup {
  static String getBaseUrl() =>
      'https://3000-idx-fiyat-app-backend-1745096031624.cluster-oayqgyglpfgseqclbygurw4xd4.cloudworkstations.dev';
  static Map<String, String> headers = {};
  static IdYeGoreOtelCall idYeGoreOtelCall = IdYeGoreOtelCall();
  static OzalOtelAramCall ozalOtelAramCall = OzalOtelAramCall();
}

class IdYeGoreOtelCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
    String? authToken = '',
  }) async {
    final baseUrl = OtelapileriGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'id ye gore otel',
      apiUrl: '${baseUrl}/api/hotels/${hotelId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'hotelId': "hotelId",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].type''',
      ));
  List? details(dynamic response) => getJsonField(
        response,
        r'''$.error.details''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
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
}

class OzalOtelAramCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? city = '',
    String? hotelType = '',
    String? amenities = '',
    String? sortOrder = '',
    String? sortBy = '',
    String? page = '',
    String? limit = '',
    String? tags = '',
  }) async {
    final baseUrl = OtelapileriGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ozal otel aram',
      apiUrl: '${baseUrl}/api/hotels/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'city': city,
        'hotelType': hotelType,
        'amenities': amenities,
        'sortBy': sortBy,
        'sortOrder': sortOrder,
        'tags': tags,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
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
  int? limit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.limit''',
      ));
  int? totalPages(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalPages''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.currentPage''',
      ));
  dynamic pagination(dynamic response) => getJsonField(
        response,
        r'''$.data.pagination''',
      );
  List<String>? tags(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? amenities(dynamic response) => (getJsonField(
        response,
        r'''$.data.hotels[:].amenities''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  double? minPricePerNight(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.hotels[:].minPricePerNight''',
      ));
  int? reviewCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hotels[:].reviewCount''',
      ));
  int? averageRating(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.hotels[:].averageRating''',
      ));
  String? thumbnailUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].thumbnailUrl''',
      ));
  String? concept(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].concept''',
      ));
  String? hotelType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].hotelType''',
      ));
  double? starRating(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.hotels[:].starRating''',
      ));
  String? postalCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].address.postalCode''',
      ));
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].address.country''',
      ));
  int? totalItems(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pagination.totalItems''',
      ));
  String? street(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].address.street''',
      ));
  String? region(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].address.region''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].address.city''',
      ));
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels[:].address''',
      );
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.hotels[:].id''',
      ));
  List? hotels(dynamic response) => getJsonField(
        response,
        r'''$.data.hotels''',
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

/// End otelapileri Group Code

/// Start user apisi Group Code

class UserApisiGroup {
  static String getBaseUrl() =>
      'https://3000-idx-fiyat-app-backend-1745096031624.cluster-oayqgyglpfgseqclbygurw4xd4.cloudworkstations.dev';
  static Map<String, String> headers = {};
  static OteleYorumVePuanVermeCall oteleYorumVePuanVermeCall =
      OteleYorumVePuanVermeCall();
  static IletisimCall iletisimCall = IletisimCall();
}

class OteleYorumVePuanVermeCall {
  Future<ApiCallResponse> call({
    String? hotelId = '',
    String? authToken = '',
    double? rating,
    String? comment = '',
  }) async {
    final baseUrl = UserApisiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "rating": ${rating},
  "comment": "${escapeStringForJson(comment)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'otele yorum ve puan verme',
      apiUrl: '${baseUrl}/api/hotels/${hotelId}/reviews',
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

  String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].location''',
      ));
  String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].path''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].msg''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.details[:].value''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
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
  String? datareviewhotelId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.review.hotelId''',
      ));
  String? datareviewuserId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.review.userId''',
      ));
  String? datareviewcreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.review.createdAt''',
      ));
  String? datareviewstatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.review.status''',
      ));
  String? datareviewcomment(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.review.comment''',
      ));
  double? datareviewrating(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.review.rating''',
      ));
  String? datareviewid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.review.id''',
      ));
  dynamic datareview(dynamic response) => getJsonField(
        response,
        r'''$.data.review''',
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

class IletisimCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? subject = '',
    String? message = '',
  }) async {
    final baseUrl = UserApisiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "subject": "${escapeStringForJson(subject)}",
  "message": "${escapeStringForJson(message)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'iletisim',
      apiUrl: '${baseUrl}/api/contact',
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

  String? errormessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  int? errorcode(dynamic response) => castToType<int>(getJsonField(
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
  List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? path(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? value(dynamic response) => (getJsonField(
        response,
        r'''$.error.details[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
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
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End user apisi Group Code

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
