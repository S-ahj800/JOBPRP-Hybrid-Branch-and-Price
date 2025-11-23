\ Model JOBPRP_RMP_0
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x185398663bba0e5
Minimize
  31.6 batch_0 + 58.8 batch_1 + 60.4 batch_2 + 67.2 batch_3 + 59.2 batch_4
   + 41.2 batch_5 + 65.2 batch_6 + 32 batch_7 + 127.2 batch_0_1_2_3_4_5_6_7
   + 125.2 batch_0_1_2_3_4_5_6 + 125.2 batch_0_1_2_3_4_5
   + 119.2 batch_0_1_2_3_4_7 + 115.2 batch_0_1_2_3_5 + 105.2 batch_1_2_3_7
   + 79.2 batch_0_2_3 + 109.2 batch_0_1_3_4_7 + 77.2 batch_0_3_5
Subject To
 order_0: batch_0 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6
   + batch_0_1_2_3_4_5 + batch_0_1_2_3_4_7 + batch_0_1_2_3_5 + batch_0_2_3
   + batch_0_1_3_4_7 + batch_0_3_5 = 1
 order_1: batch_1 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6
   + batch_0_1_2_3_4_5 + batch_0_1_2_3_4_7 + batch_0_1_2_3_5
   + batch_1_2_3_7 + batch_0_1_3_4_7 = 1
 order_2: batch_2 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6
   + batch_0_1_2_3_4_5 + batch_0_1_2_3_4_7 + batch_0_1_2_3_5
   + batch_1_2_3_7 + batch_0_2_3 = 1
 order_3: batch_3 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6
   + batch_0_1_2_3_4_5 + batch_0_1_2_3_4_7 + batch_0_1_2_3_5
   + batch_1_2_3_7 + batch_0_2_3 + batch_0_1_3_4_7 + batch_0_3_5 = 1
 order_4: batch_4 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6
   + batch_0_1_2_3_4_5 + batch_0_1_2_3_4_7 + batch_0_1_3_4_7 = 1
 order_5: batch_5 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6
   + batch_0_1_2_3_4_5 + batch_0_1_2_3_5 + batch_0_3_5 = 1
 order_6: batch_6 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_5_6 = 1
 order_7: batch_7 + batch_0_1_2_3_4_5_6_7 + batch_0_1_2_3_4_7
   + batch_1_2_3_7 + batch_0_1_3_4_7 = 1
Bounds
End
