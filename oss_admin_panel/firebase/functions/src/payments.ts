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

    export const flutterwaveWebhook = functions.https.onRequest(
  async (req, res) => {
    const event = req.body;

    if (event.status === "successful") {
      const paymentSnap = await db
        .collection("payments")
        .where("providerRef", "==", event.tx_ref)
        .limit(1)
        .get();

      if (paymentSnap.empty) return res.sendStatus(200);

      const payment = paymentSnap.docs[0];

      await payment.ref.update({ status: "successful" });

      // Create ORDER here (SERVER ONLY)
      await db.collection("orders").add({
        buyerId: payment.data().buyerId,
        totalAmount: payment.data().amount,
        paymentMethod: payment.data().method,
        paymentStatus: "paid",
        orderStatus: "processing",
        createdAt: admin.firestore.FieldValue.serverTimestamp(),
      });
    }

    res.sendStatus(200);
  }
);


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
