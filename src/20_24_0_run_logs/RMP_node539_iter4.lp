\ Model JOBPRP_RMP_539
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe79dbd33bf0d68dc
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 89.2 batch_17
   + 77.2 batch_18 + 61.2 batch_19 + 105.6 batch_3_12_16
   + 115.2 batch_2_7_11 + 109.2 batch_6_8_13_19 + 121.2 batch_0_4_5_14_19
   + 121.2 batch_5_9_14_18 + 113.2 batch_5_14_17_19 + 135.2 batch_1_9_15_19
   + 119.2 batch_10_17_18 + 127.2 batch_9_10_17_19 + 119.2 batch_0_4_8_10
   + 107.2 batch_8_9_18_19 + 131.2 batch_8_17_18_19 + 125.2 batch_8_9_17_19
   + 129.2 batch_8_10_17_19 + 121.2 batch_6_13_17_19
   + 123.2 batch_5_10_14_18 + 129.2 batch_5_9_10_14 + 123.2 batch_5_6_13_14
   + 117.2 batch_0_4_5_14 + 141.2 batch_1_8_15 + 113.2 batch_6_13_17
   + 111.2 batch_5_14_17 + 103.2 batch_6_13_18 + 130 batch_0_4_8_18
   + 125.2 batch_6_10_13_18
Subject To
 order_0: batch_0_4_5_14_19 + batch_0_4_8_10 + batch_0_4_5_14
   + batch_0_4_8_18 = 1
 order_1: batch_1_9_15_19 + batch_1_8_15 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_14_19 + batch_0_4_8_10 + batch_0_4_5_14
   + batch_0_4_8_18 = 1
 order_5: batch_0_4_5_14_19 + batch_5_9_14_18 + batch_5_14_17_19
   + batch_5_10_14_18 + batch_5_9_10_14 + batch_5_6_13_14 + batch_0_4_5_14
   + batch_5_14_17 = 1
 order_6: batch_6_8_13_19 + batch_6_13_17_19 + batch_5_6_13_14
   + batch_6_13_17 + batch_6_13_18 + batch_6_10_13_18 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_6_8_13_19 + batch_0_4_8_10 + batch_8_9_18_19
   + batch_8_17_18_19 + batch_8_9_17_19 + batch_8_10_17_19 + batch_1_8_15
   + batch_0_4_8_18 = 1
 order_9: batch_9 + batch_5_9_14_18 + batch_1_9_15_19 + batch_9_10_17_19
   + batch_8_9_18_19 + batch_8_9_17_19 + batch_5_9_10_14 = 1
 order_10: batch_10 + batch_10_17_18 + batch_9_10_17_19 + batch_0_4_8_10
   + batch_8_10_17_19 + batch_5_10_14_18 + batch_5_9_10_14
   + batch_6_10_13_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_8_13_19 + batch_6_13_17_19 + batch_5_6_13_14
   + batch_6_13_17 + batch_6_13_18 + batch_6_10_13_18 = 1
 order_14: batch_0_4_5_14_19 + batch_5_9_14_18 + batch_5_14_17_19
   + batch_5_10_14_18 + batch_5_9_10_14 + batch_5_6_13_14 + batch_0_4_5_14
   + batch_5_14_17 = 1
 order_15: batch_1_9_15_19 + batch_1_8_15 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_17 + batch_5_14_17_19 + batch_10_17_18 + batch_9_10_17_19
   + batch_8_17_18_19 + batch_8_9_17_19 + batch_8_10_17_19
   + batch_6_13_17_19 + batch_6_13_17 + batch_5_14_17 = 1
 order_18: batch_18 + batch_5_9_14_18 + batch_10_17_18 + batch_8_9_18_19
   + batch_8_17_18_19 + batch_5_10_14_18 + batch_6_13_18 + batch_0_4_8_18
   + batch_6_10_13_18 = 1
 order_19: batch_19 + batch_6_8_13_19 + batch_0_4_5_14_19
   + batch_5_14_17_19 + batch_1_9_15_19 + batch_9_10_17_19
   + batch_8_9_18_19 + batch_8_17_18_19 + batch_8_9_17_19
   + batch_8_10_17_19 + batch_6_13_17_19 = 1
Bounds
End
