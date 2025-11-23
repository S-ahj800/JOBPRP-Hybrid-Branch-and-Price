\ Model JOBPRP_RMP_1404
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x83afc5bd8a19a131
Minimize
  91.2 batch_5 + 89.2 batch_6 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 70.4 batch_13 + 65.2 batch_14 + 61.2 batch_19
   + 137.2 batch_0_4_13_14_16_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 115.6 batch_3_12_15 + 115.2 batch_0_4_8_14_16
   + 105.2 batch_8_9_13_14_19 + 119.2 batch_5_6_9_19
   + 125.2 batch_5_6_10_19 + 137.2 batch_0_4_9_13_16
   + 121.2 batch_6_9_10_14 + 127.2 batch_0_4_8_13_16
   + 119.2 batch_5_10_13_14 + 117.1999966021056 batch_8_9_10
   + 125.2 batch_5_9_10_13 + 129.2 batch_0_4_10_13_16
   + 135.2 batch_0_4_5_13_16
Subject To
 order_0: batch_0_4_13_14_16_19 + batch_0_4_8_14_16 + batch_0_4_9_13_16
   + batch_0_4_8_13_16 + batch_0_4_10_13_16 + batch_0_4_5_13_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_15 = 1
 order_4: batch_0_4_13_14_16_19 + batch_0_4_8_14_16 + batch_0_4_9_13_16
   + batch_0_4_8_13_16 + batch_0_4_10_13_16 + batch_0_4_5_13_16 = 1
 order_5: batch_5 + batch_5_6_9_19 + batch_5_6_10_19 + batch_5_10_13_14
   + batch_5_9_10_13 + batch_0_4_5_13_16 = 1
 order_6: batch_6 + batch_5_6_9_19 + batch_5_6_10_19 + batch_6_9_10_14 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_0_4_8_14_16 + batch_8_9_13_14_19
   + batch_0_4_8_13_16 + batch_8_9_10 = 1
 order_9: batch_9 + batch_8_9_13_14_19 + batch_5_6_9_19 + batch_0_4_9_13_16
   + batch_6_9_10_14 + batch_8_9_10 + batch_5_9_10_13 = 1
 order_10: batch_10 + batch_5_6_10_19 + batch_6_9_10_14 + batch_5_10_13_14
   + batch_8_9_10 + batch_5_9_10_13 + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_15 = 1
 order_13: batch_13 + batch_0_4_13_14_16_19 + batch_8_9_13_14_19
   + batch_0_4_9_13_16 + batch_0_4_8_13_16 + batch_5_10_13_14
   + batch_5_9_10_13 + batch_0_4_10_13_16 + batch_0_4_5_13_16 = 1
 order_14: batch_14 + batch_0_4_13_14_16_19 + batch_0_4_8_14_16
   + batch_8_9_13_14_19 + batch_6_9_10_14 + batch_5_10_13_14 = 1
 order_15: batch_3_12_15 = 1
 order_16: batch_0_4_13_14_16_19 + batch_0_4_8_14_16 + batch_0_4_9_13_16
   + batch_0_4_8_13_16 + batch_0_4_10_13_16 + batch_0_4_5_13_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_0_4_13_14_16_19 + batch_8_9_13_14_19
   + batch_5_6_9_19 + batch_5_6_10_19 = 1
Bounds
End
