\ Model JOBPRP_RMP_439
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x25c2679d3d2559ee
Minimize
  83.6 batch_3 + 91.2 batch_5 + 89.6 batch_12 + 70.4 batch_13
   + 77.2 batch_18 + 115.2 batch_2_7_11 + 127.2 batch_1_10_17
   + 117.2 batch_0_4_14_15_16 + 113.2 batch_6_8_9_19 + 115.2 batch_3_5_18
   + 127.2 batch_5_12_18 + 117.2 batch_5_13_18 + 119.2 batch_3_5_13
   + 111.2 batch_3_13_18
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_10_17 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_5_18 + batch_3_5_13 + batch_3_13_18 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_5 + batch_3_5_18 + batch_5_12_18 + batch_5_13_18
   + batch_3_5_13 = 1
 order_6: batch_6_8_9_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_9_19 = 1
 order_9: batch_6_8_9_19 = 1
 order_10: batch_1_10_17 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_5_12_18 = 1
 order_13: batch_13 + batch_5_13_18 + batch_3_5_13 + batch_3_13_18 = 1
 order_14: batch_0_4_14_15_16 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_10_17 = 1
 order_18: batch_18 + batch_3_5_18 + batch_5_12_18 + batch_5_13_18
   + batch_3_13_18 = 1
 order_19: batch_6_8_9_19 = 1
Bounds
End
