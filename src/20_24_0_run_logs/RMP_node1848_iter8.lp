\ Model JOBPRP_RMP_1848
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd3abd378bd55fc3f
Minimize
  83.6 batch_3 + 91.2 batch_5 + 72.4 batch_8 + 65.2 batch_14 + 74.8 batch_15
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 123.2 batch_0_4_10_15_16
   + 124 batch_6_12_13_19 + 127.2 batch_1_9_17 + 115.2 batch_3_5_18
   + 139.2 batch_3_14_15_18 + 127.2 batch_3_8_15 + 117.2 batch_5_14_18
   + 117.2 batch_3_5_14 + 119.2 batch_0_4_10_14_16 + 103.2 batch_8_14_18
   + 137.2 batch_5_14_15_18 + 83.2 batch_8_14 + 116 batch_8_14_15
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_1: batch_1_9_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_18 + batch_3_14_15_18 + batch_3_8_15
   + batch_3_5_14 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_5: batch_5 + batch_3_5_18 + batch_5_14_18 + batch_3_5_14
   + batch_5_14_15_18 = 1
 order_6: batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_15 + batch_8_14_18 + batch_8_14
   + batch_8_14_15 = 1
 order_9: batch_1_9_17 = 1
 order_10: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_19 = 1
 order_13: batch_6_12_13_19 = 1
 order_14: batch_14 + batch_3_14_15_18 + batch_5_14_18 + batch_3_5_14
   + batch_0_4_10_14_16 + batch_8_14_18 + batch_5_14_15_18 + batch_8_14
   + batch_8_14_15 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_3_14_15_18 + batch_3_8_15
   + batch_5_14_15_18 + batch_8_14_15 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_10_14_16 = 1
 order_17: batch_1_9_17 = 1
 order_18: batch_18 + batch_3_5_18 + batch_3_14_15_18 + batch_5_14_18
   + batch_8_14_18 + batch_5_14_15_18 = 1
 order_19: batch_6_12_13_19 = 1
Bounds
End
