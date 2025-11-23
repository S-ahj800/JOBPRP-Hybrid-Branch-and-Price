\ Model JOBPRP_RMP_1155
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf13ace7e452c08d0
Minimize
  72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10 + 65.2 batch_14
   + 74.8 batch_15 + 61.2 batch_19 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 119.2 batch_3_8_12 + 135.2 batch_5_6_13_15
   + 117.2 batch_5_6_13_19 + 131.2 batch_0_4_9_16_19
   + 131.2 batch_3_12_14_19 + 99.2 batch_8_9_14_19 + 118.4 batch_3_10_12
   + 125.2 batch_3_9_12 + 117.2 batch_9_10_14 + 129.2 batch_0_4_9_14_16
   + 139.2 batch_0_4_9_15_16 + 125.2 batch_8_10_15_19
   + 128.8 batch_0_4_15_16_19 + 116 batch_8_10_14_19
   + 113.2 batch_0_4_15_16 + 117.2 batch_8_9_10_19 + 127.2 batch_8_9_10_14
Subject To
 order_0: batch_0_4_9_16_19 + batch_0_4_9_14_16 + batch_0_4_9_15_16
   + batch_0_4_15_16_19 + batch_0_4_15_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_8_12 + batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12
   = 1
 order_4: batch_0_4_9_16_19 + batch_0_4_9_14_16 + batch_0_4_9_15_16
   + batch_0_4_15_16_19 + batch_0_4_15_16 = 1
 order_5: batch_5_6_13_15 + batch_5_6_13_19 = 1
 order_6: batch_5_6_13_15 + batch_5_6_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_3_8_12 + batch_8_9_14_19 + batch_8_10_15_19
   + batch_8_10_14_19 + batch_8_9_10_19 + batch_8_9_10_14 = 1
 order_9: batch_9 + batch_0_4_9_16_19 + batch_8_9_14_19 + batch_3_9_12
   + batch_9_10_14 + batch_0_4_9_14_16 + batch_0_4_9_15_16
   + batch_8_9_10_19 + batch_8_9_10_14 = 1
 order_10: batch_10 + batch_3_10_12 + batch_9_10_14 + batch_8_10_15_19
   + batch_8_10_14_19 + batch_8_9_10_19 + batch_8_9_10_14 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_8_12 + batch_3_12_14_19 + batch_3_10_12 + batch_3_9_12
   = 1
 order_13: batch_5_6_13_15 + batch_5_6_13_19 = 1
 order_14: batch_14 + batch_3_12_14_19 + batch_8_9_14_19 + batch_9_10_14
   + batch_0_4_9_14_16 + batch_8_10_14_19 + batch_8_9_10_14 = 1
 order_15: batch_15 + batch_5_6_13_15 + batch_0_4_9_15_16
   + batch_8_10_15_19 + batch_0_4_15_16_19 + batch_0_4_15_16 = 1
 order_16: batch_0_4_9_16_19 + batch_0_4_9_14_16 + batch_0_4_9_15_16
   + batch_0_4_15_16_19 + batch_0_4_15_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_6_13_19 + batch_0_4_9_16_19
   + batch_3_12_14_19 + batch_8_9_14_19 + batch_8_10_15_19
   + batch_0_4_15_16_19 + batch_8_10_14_19 + batch_8_9_10_19 = 1
Bounds
End
