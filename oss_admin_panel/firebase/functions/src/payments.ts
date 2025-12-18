import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import Flutterwave from "flutterwave-node-v3";

const flw = new Flutterwave(
  functions.config().flutterwave.public_key,
  functions.config().flutterwave.secret_key
);

const db = admin.firestore();

export const initiateMobileMoney = functions.https.onCall(
  async (data, context) => {
    const { amount, phone, network, buyerId } = data;

    const payload = {
      tx_ref: `OSS-${Date.now()}`,
      amount,
      currency: "UGX",
      payment_type: "mobilemoneyuganda",
      phone_number: phone,
      network,
      customer: {
        phone_number: phone,
      },
    };

    const response = await flw.MobileMoney.uganda(payload);

    await db.collection("payments").add({
      buyerId,
      amount,
      method: network,
      status: "pending",
      providerRef: payload.tx_ref,
      createdAt: admin.firestore.FieldValue.serverTimestamp(),
    });

    return response;
  }
);
