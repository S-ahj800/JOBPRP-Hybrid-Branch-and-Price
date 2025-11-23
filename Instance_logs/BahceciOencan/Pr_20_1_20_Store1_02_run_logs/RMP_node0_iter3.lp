\ Model JOBPRP_RMP_0
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc0382f952b63e5d1
Minimize
  41.6 batch_0 + 65.2 batch_1 + 41.2 batch_2 + 60.4 batch_3 + 50.8 batch_4
   + 62.4 batch_5 + 60.4 batch_6 + 67.2 batch_7
   + 119.2 batch_0_1_2_3_4_5_6_7 + 115.2 batch_0_1_2_3_4_5_6
Subject To
 order_0: batch_0 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_1: batch_1 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_2: batch_2 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_3: batch_3 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_4: batch_4 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_5: batch_5 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_6: batch_6 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_7: batch_7 + batch_0_1_2_3_4_5_6_7 = 1
Bounds
End
