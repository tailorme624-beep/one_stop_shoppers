import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

const db = admin.firestore();

export const notifyAdminOnSellerCreate = functions.firestore
  .document("sellers/{sellerId}")
  .onCreate(async (snap) => {
    await db.collection("notifications").add({
      senderRole: "system",
      receiverRole: "admin",
      title: "New Seller Registration",
      message: "A new seller is awaiting approval",
      type: "system",
      isRead: false,
      createdAt: admin.firestore.FieldValue.serverTimestamp(),
    });
  });

