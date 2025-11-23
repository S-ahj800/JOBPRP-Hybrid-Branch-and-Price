\ Model JOBPRP_RMP_1512
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x342b73f03e10f37d
Minimize
  98 batch_1 + 91.2 batch_5 + 72.4 batch_8 + 77.2 batch_9 + 78.4 batch_10
   + 77.2 batch_18 + 105.6 batch_3_12_16 + 115.2 batch_2_7_11
   + 113.2 batch_6_13_14_17 + 117.2 batch_1_5_18 + 129.2 batch_1_5_8
   + 119.2 batch_1_5_9 + 127.2 batch_0_4_5_10 + 130 batch_0_4_10_15_19
   + 127.2 batch_1_5_10 + 131.2 batch_0_4_5_15_19 + 111.2 batch_1_9_18
   + 113.2 batch_5_9_18 + 125.2 batch_8_10_15_19 + 119.2 batch_5_8_10
   + 127.2 batch_0_4_10_18 + 121.2 batch_1_8_18
Subject To
 order_0: batch_0_4_5_10 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_4_10_18 = 1
 order_1: batch_1 + batch_1_5_18 + batch_1_5_8 + batch_1_5_9 + batch_1_5_10
   + batch_1_9_18 + batch_1_8_18 = 1
 order_2: batch_2_7_11 = 1
 order_3: batch_3_12_16 = 1
 order_4: batch_0_4_5_10 + batch_0_4_10_15_19 + batch_0_4_5_15_19
   + batch_0_4_10_18 = 1
 order_5: batch_5 + batch_1_5_18 + batch_1_5_8 + batch_1_5_9
   + batch_0_4_5_10 + batch_1_5_10 + batch_0_4_5_15_19 + batch_5_9_18
   + batch_5_8_10 = 1
 order_6: batch_6_13_14_17 = 1
 order_7: batch_2_7_11 = 1
 order_8: batch_8 + batch_1_5_8 + batch_8_10_15_19 + batch_5_8_10
   + batch_1_8_18 = 1
 order_9: batch_9 + batch_1_5_9 + batch_1_9_18 + batch_5_9_18 = 1
 order_10: batch_10 + batch_0_4_5_10 + batch_0_4_10_15_19 + batch_1_5_10
   + batch_8_10_15_19 + batch_5_8_10 + batch_0_4_10_18 = 1
 order_11: batch_2_7_11 = 1
 order_12: batch_3_12_16 = 1
 order_13: batch_6_13_14_17 = 1
 order_14: batch_6_13_14_17 = 1
 order_15: batch_0_4_10_15_19 + batch_0_4_5_15_19 + batch_8_10_15_19 = 1
 order_16: batch_3_12_16 = 1
 order_17: batch_6_13_14_17 = 1
 order_18: batch_18 + batch_1_5_18 + batch_1_9_18 + batch_5_9_18
   + batch_0_4_10_18 + batch_1_8_18 = 1
 order_19: batch_0_4_10_15_19 + batch_0_4_5_15_19 + batch_8_10_15_19 = 1
Bounds
End
