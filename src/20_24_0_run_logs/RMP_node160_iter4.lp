\ Model JOBPRP_RMP_160
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6af833475bea50bb
Minimize
  78.4 batch_10 + 70.4 batch_13 + 65.2 batch_14 + 74.8 batch_15
   + 61.2 batch_19 + 123.2 batch_1_17_18 + 115.2 batch_2_7_11
   + 123.2 batch_0_4_10_15_16 + 127.2 batch_5_9_12_19 + 125.2 batch_3_6_8
   + 127.2 batch_0_4_13_15_16 + 119.9999996307692 batch_0_4_16_19
   + 105.2 batch_10_13_14 + 129.2 batch_0_4_10_13_16 + 81.2 batch_13_14
Subject To
 order_0: batch_0_4_10_15_16 + batch_0_4_13_15_16 + batch_0_4_16_19
   + batch_0_4_10_13_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_6_8 = 1
 order_4: batch_0_4_10_15_16 + batch_0_4_13_15_16 + batch_0_4_16_19
   + batch_0_4_10_13_16 = 1
 order_5: batch_5_9_12_19 = 1
 order_6: batch_3_6_8 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_3_6_8 = 1
 order_9: batch_5_9_12_19 = 1
 order_10: batch_10 + batch_0_4_10_15_16 + batch_10_13_14
   + batch_0_4_10_13_16 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_5_9_12_19 = 1
 order_13: batch_13 + batch_0_4_13_15_16 + batch_10_13_14
   + batch_0_4_10_13_16 + batch_13_14 = 1
 order_14: batch_14 + batch_10_13_14 + batch_13_14 = 1
 order_15: batch_15 + batch_0_4_10_15_16 + batch_0_4_13_15_16 = 1
 order_16: batch_0_4_10_15_16 + batch_0_4_13_15_16 + batch_0_4_16_19
   + batch_0_4_10_13_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_19 + batch_5_9_12_19 + batch_0_4_16_19 = 1
Bounds
End
