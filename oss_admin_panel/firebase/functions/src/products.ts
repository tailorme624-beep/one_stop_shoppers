export const lockProductApproval = functions.firestore
  .document("products/{productId}")
  .onCreate(async (snap, context) => {
    const product = snap.data();

    if (product.status !== "active") {
      await snap.ref.update({ status: "pending" });
    }
  });

