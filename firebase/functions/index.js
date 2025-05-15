const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const OneSignal = require("@onesignal/node-onesignal");

const kUserKey =
  "os_v2_org_2ejevmzvynaglctq3hzd2vxw47aro6b3565uwj4ikknhysy4qm3k43ieqxh6ib4bmsx4sbcvur5dtmqhts6ts2djgxi6w2ciwajfana";
const kAPIKey =
  "os_v2_app_sojcldvrdjb3tp63oc76kpsyyfm2mfop2fwuzjuvlt6drioio7ghgvph54bskp37k25jtlf5p2krlpjmrxlxli3sutyr7vlnyyq6yhq";

const configuration = OneSignal.createConfiguration({
  userKey: kUserKey,
  appKey: kAPIKey,
});
const client = new OneSignal.DefaultApi(configuration);
const user = new OneSignal.User();
const axios = require("axios");

exports.addUser = functions.https.onCall(async (data, context) => {
  if (context.auth.uid != data.user_id) {
    return "Unauthenticated calls are not allowed.";
  }
  try {
    user.identity = {
      external_id: data.user_id,
    };
    user.properties = {
      tags: data.tags,
    };
    user.subscriptions = data.subscriptions;
    const createdUser = await client.createUser(
      "9392258e-b11a-43b9-bfdb-70bfe53e58c1",
      user,
    );
    if (createdUser.identity["onesignal_id"] == null) {
      throw new functions.https.HttpsError(
        "aborted",
        "Could not create OneSignal user",
      );
    }
    return createdUser;
  } catch (err) {
    console.error(
      `Unable to create user ${context.auth.uid}.
            Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not create OneSignal user",
    );
  }
});

exports.deleteUser = functions.https.onCall(async (data, context) => {
  if (context.auth.uid != data.user_id) {
    return "Unauthenticated calls are not allowed.";
  }

  const url = `https://api.onesignal.com/apps/9392258e-b11a-43b9-bfdb-70bfe53e58c1/users/by/external_id/${data.user_id}`;

  try {
    await axios.delete(url, {
      headers: {
        Authorization: `Basic ${kAPIKey}`,
      },
    });
    return "User deleted";
  } catch (err) {
    console.error(
      `Unable to delete user ${context.auth.uid}. Error: ${err.message}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not delete OneSignal user",
    );
  }
});
