\ Model JOBPRP_RMP_115
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd9a11051866832ca
Minimize
  55.6 batch_2 + 31.6 batch_3 + 67.2 batch_5 + 61.2 batch_7 + 67.2 batch_11
   + 56.8 batch_1_3_9 + 79.2 batch_2_5_6_10 + 73.2 batch_2_5_11
   + 83.2 batch_3_6_10_11 + 79.2 batch_6_7_10_11 + 77.2 batch_0_4_7_8
   + 67.6 batch_1_2_9 + 79.19999802 batch_2_5_6_10 + 79.2 batch_1_5_9
   + 81.2 batch_5_6_10_11 + 75.2 batch_0_4_8_11 + 66.4 batch_0_3_4_8
Subject To
 order_0: batch_0_4_7_8 + batch_0_4_8_11 + batch_0_3_4_8 = 1
 order_1: batch_1_3_9 + batch_1_2_9 + batch_1_5_9 = 1
 order_2: batch_2 + batch_2_5_6_10 + batch_2_5_11 + batch_1_2_9
   + batch_2_5_6_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_3_6_10_11 + batch_0_3_4_8 = 1
 order_4: batch_0_4_7_8 + batch_0_4_8_11 + batch_0_3_4_8 = 1
 order_5: batch_5 + batch_2_5_6_10 + batch_2_5_11 + batch_2_5_6_10
   + batch_1_5_9 + batch_5_6_10_11 = 1
 order_6: batch_2_5_6_10 + batch_3_6_10_11 + batch_6_7_10_11
   + batch_2_5_6_10 + batch_5_6_10_11 = 1
 order_7: batch_7 + batch_6_7_10_11 + batch_0_4_7_8 = 1
 order_8: batch_0_4_7_8 + batch_0_4_8_11 + batch_0_3_4_8 = 1
 order_9: batch_1_3_9 + batch_1_2_9 + batch_1_5_9 = 1
 order_10: batch_2_5_6_10 + batch_3_6_10_11 + batch_6_7_10_11
   + batch_2_5_6_10 + batch_5_6_10_11 = 1
 order_11: batch_11 + batch_2_5_11 + batch_3_6_10_11 + batch_6_7_10_11
   + batch_5_6_10_11 + batch_0_4_8_11 = 1
Bounds
End
