\ Model JOBPRP_RMP_571
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xd65955ab2cc176af
Minimize
  31.6 batch_1 + 31.6 batch_3 + 60.4 batch_6 + 61.2 batch_7 + 34.8 batch_9
   + 60.4 batch_10 + 67.2 batch_11 + 56.8 batch_1_3_9 + 73.2 batch_7_9_11
   + 33.6 batch_1_3 + 68.4 batch_0_3_8_9 + 72.4 batch_0_1_8_9
   + 66.4 batch_0_6_8_10 + 68.4 batch_0_8_9_10 + 76.4 batch_1_6_9_10
   + 66.4 batch_0_6_8_9 + 75.2 batch_2_4_5_7 + 70.4 batch_1_3_6_10
   + 79.2 batch_6_7_10_11 + 75.2 batch_2_4_5_10 + 81.2 batch_0_1_8_11
Subject To
 order_0: batch_0_3_8_9 + batch_0_1_8_9 + batch_0_6_8_10 + batch_0_8_9_10
   + batch_0_6_8_9 + batch_0_1_8_11 = 1
 order_1: batch_1 + batch_1_3_9 + batch_1_3 + batch_0_1_8_9
   + batch_1_6_9_10 + batch_1_3_6_10 + batch_0_1_8_11 = 1
 order_2: batch_2_4_5_7 + batch_2_4_5_10 = 1
 order_3: batch_3 + batch_1_3_9 + batch_1_3 + batch_0_3_8_9
   + batch_1_3_6_10 = 1
 order_4: batch_2_4_5_7 + batch_2_4_5_10 = 1
 order_5: batch_2_4_5_7 + batch_2_4_5_10 = 1
 order_6: batch_6 + batch_0_6_8_10 + batch_1_6_9_10 + batch_0_6_8_9
   + batch_1_3_6_10 + batch_6_7_10_11 = 1
 order_7: batch_7 + batch_7_9_11 + batch_2_4_5_7 + batch_6_7_10_11 = 1
 order_8: batch_0_3_8_9 + batch_0_1_8_9 + batch_0_6_8_10 + batch_0_8_9_10
   + batch_0_6_8_9 + batch_0_1_8_11 = 1
 order_9: batch_9 + batch_1_3_9 + batch_7_9_11 + batch_0_3_8_9
   + batch_0_1_8_9 + batch_0_8_9_10 + batch_1_6_9_10 + batch_0_6_8_9 = 1
 order_10: batch_10 + batch_0_6_8_10 + batch_0_8_9_10 + batch_1_6_9_10
   + batch_1_3_6_10 + batch_6_7_10_11 + batch_2_4_5_10 = 1
 order_11: batch_11 + batch_7_9_11 + batch_6_7_10_11 + batch_0_1_8_11 = 1
Bounds
End
