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

export const notifyAdminOnProductSubmission = functions.firestore
  .document("product_submissions/{id}")
  .onCreate(async () => {
    await db.collection("notifications").add({
      senderRole: "system",
      receiverRole: "admin",
      title: "New Product Submission",
      message: "A seller submitted a product for approval",
      type: "product",
      isRead: false,
      createdAt: admin.firestore.FieldValue.serverTimestamp(),
    });
  });


