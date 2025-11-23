\ Model JOBPRP_RMP_784
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x83a74a3e840c8f5
Minimize
  72.4 batch_8 + 78.4 batch_10 + 89.6 batch_12 + 77.2 batch_18
   + 61.2 batch_19 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 123.2 batch_5_14_15_17 + 119.2 batch_0_4_15_17
   + 121.2 batch_0_4_5_14_19 + 111.2 batch_1_9_18 + 135.2 batch_0_4_10_12
   + 125.2 batch_6_10_13_18 + 124 batch_6_12_13_19 + 123.2 batch_5_6_13_14
   + 125.2 batch_3_5_14_16 + 127.2 batch_8_10_18_19 + 122.4 batch_8_10_12
   + 112.4 batch_3_8_16 + 119.1999973123588 batch_6_10_13_19
   + 129.2 batch_8_10_12_19
Subject To
 order_0: batch_0_4_15_17 + batch_0_4_5_14_19 + batch_0_4_10_12 = 1
 order_1: batch_1_9_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 + batch_3_5_14_16 + batch_3_8_16 = 1
 order_4: batch_0_4_15_17 + batch_0_4_5_14_19 + batch_0_4_10_12 = 1
 order_5: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_5_6_13_14
   + batch_3_5_14_16 = 1
 order_6: batch_6_10_13_18 + batch_6_12_13_19 + batch_5_6_13_14
   + batch_6_10_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_8_10_18_19 + batch_8_10_12 + batch_3_8_16
   + batch_8_10_12_19 = 1
 order_9: batch_1_9_18 = 1
 order_10: batch_10 + batch_0_4_10_12 + batch_6_10_13_18 + batch_8_10_18_19
   + batch_8_10_12 + batch_6_10_13_19 + batch_8_10_12_19 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_12_16 + batch_0_4_10_12 + batch_6_12_13_19
   + batch_8_10_12 + batch_8_10_12_19 = 1
 order_13: batch_6_10_13_18 + batch_6_12_13_19 + batch_5_6_13_14
   + batch_6_10_13_19 = 1
 order_14: batch_5_14_15_17 + batch_0_4_5_14_19 + batch_5_6_13_14
   + batch_3_5_14_16 = 1
 order_15: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_16: batch_3_12_16 + batch_3_5_14_16 + batch_3_8_16 = 1
 order_17: batch_5_14_15_17 + batch_0_4_15_17 = 1
 order_18: batch_18 + batch_1_9_18 + batch_6_10_13_18 + batch_8_10_18_19
   = 1
 order_19: batch_19 + batch_0_4_5_14_19 + batch_6_12_13_19
   + batch_8_10_18_19 + batch_6_10_13_19 + batch_8_10_12_19 = 1
Bounds
End
