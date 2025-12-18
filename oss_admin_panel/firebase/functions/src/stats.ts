export const updateStatsOnOrderCreate = functions.firestore
  .document("orders/{orderId}")
  .onCreate(async (snap) => {
    const order = snap.data();
    const statsRef = db.doc("stats/system");

    await statsRef.set(
      {
        totalOrders: admin.firestore.FieldValue.increment(1),
        totalRevenue: admin.firestore.FieldValue.increment(order.totalAmount),
      },
      { merge: true }
    );
  });

