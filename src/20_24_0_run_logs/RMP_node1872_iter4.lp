\ Model JOBPRP_RMP_1872
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5e38bdc43405206a
Minimize
  83.6 batch_3 + 91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 123.2 batch_1_17_18 + 115.2 batch_2_7_11 + 117.2 batch_0_4_14_15_16
   + 124 batch_6_12_13_19 + 112.4 batch_3_8_10 + 119.2 batch_3_5_9
   + 118 batch_3_8_9 + 121.2 batch_3_9_10 + 123.2 batch_3_5_10
   + 125.2 batch_3_5_8 + 119.2 batch_5_8_10 + 117.2 batch_8_9_10
   + 125.2 batch_5_9_10
Subject To
 order_0: batch_0_4_14_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_8_10 + batch_3_5_9 + batch_3_8_9 + batch_3_9_10
   + batch_3_5_10 + batch_3_5_8 = 1
 order_4: batch_0_4_14_15_16 = 1
 order_5: batch_5 + batch_3_5_9 + batch_3_5_10 + batch_3_5_8 + batch_5_8_10
   + batch_5_9_10 = 1
 order_6: batch_6_12_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_10 + batch_3_8_9 + batch_3_5_8 + batch_5_8_10
   + batch_8_9_10 = 1
 order_9: batch_9 + batch_3_5_9 + batch_3_8_9 + batch_3_9_10 + batch_8_9_10
   + batch_5_9_10 = 1
 order_10: batch_10 + batch_3_8_10 + batch_3_9_10 + batch_3_5_10
   + batch_5_8_10 + batch_8_9_10 + batch_5_9_10 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_6_12_13_19 = 1
 order_13: batch_6_12_13_19 = 1
 order_14: batch_0_4_14_15_16 = 1
 order_15: batch_0_4_14_15_16 = 1
 order_16: batch_0_4_14_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_6_12_13_19 = 1
Bounds
End
