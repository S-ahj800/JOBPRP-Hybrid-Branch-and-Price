\ Model JOBPRP_RMP_128
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa2f52b713b0dedde
Minimize
  83.6 batch_3 + 91.2 batch_5 + 77.2 batch_9 + 78.4 batch_10 + 89.6 batch_12
   + 65.2 batch_14 + 74.8 batch_15 + 123.2 batch_1_17_18
   + 115.2 batch_2_7_11 + 109.2 batch_6_8_13_19 + 127.2 batch_0_4_5_14_16
   + 141.2 batch_5_9_10_15 + 118.4 batch_3_10_12 + 129.2 batch_0_4_9_16
   + 129.2 batch_0_4_9_14_16 + 107.2 batch_5_9 + 101.6 batch_3_12
   + 137.2 batch_5_12_14_15 + 131.2 batch_0_3_4_16 + 127.2 batch_0_4_12_16
   + 129.2 batch_5_12_15
Subject To
 order_0: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_3_4_16 + batch_0_4_12_16 = 1
 order_1: batch_1_17_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3 + batch_3_10_12 + batch_3_12 + batch_0_3_4_16 = 1
 order_4: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_3_4_16 + batch_0_4_12_16 = 1
 order_5: batch_5 + batch_0_4_5_14_16 + batch_5_9_10_15 + batch_5_9
   + batch_5_12_14_15 + batch_5_12_15 = 1
 order_6: batch_6_8_13_19 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_6_8_13_19 = 1
 order_9: batch_9 + batch_5_9_10_15 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_5_9 = 1
 order_10: batch_10 + batch_5_9_10_15 + batch_3_10_12 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_12 + batch_3_10_12 + batch_3_12 + batch_5_12_14_15
   + batch_0_4_12_16 + batch_5_12_15 = 1
 order_13: batch_6_8_13_19 = 1
 order_14: batch_14 + batch_0_4_5_14_16 + batch_0_4_9_14_16
   + batch_5_12_14_15 = 1
 order_15: batch_15 + batch_5_9_10_15 + batch_5_12_14_15 + batch_5_12_15
   = 1
 order_16: batch_0_4_5_14_16 + batch_0_4_9_16 + batch_0_4_9_14_16
   + batch_0_3_4_16 + batch_0_4_12_16 = 1
 order_17: batch_1_17_18 = 1
 order_18: batch_1_17_18 = 1
 order_19: batch_6_8_13_19 = 1
Bounds
End
