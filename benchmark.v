1.	32'b100000_00000_00001_00000_11000001010;//-- Addi	r1	,r0	,1546
2.	32'b000001_00000_00001_00010_00000000000;//-- Add 	r2	,r0	,r1 
3.	32'b000011_00000_00001_00011_00000000000;//-- sub	r3	,r0	,r1 
4.	32'b000101_00010_00011_00100_00000000000;//-- And	r4	,r2	,r3	
5.	32'b100001_00011_00101_00011_01000110100;//-- Subi	r5	,r3	,6708   
6.	32'b000110_00011_00100_00101_00000000000;//-- or	r5	,r3	,r4
7.	32'b000111_00101_00000_00110_00000000000;//-- nor 	r6	,r5	,r0
8.	32'b000111_00100_00000_01011_00000000000;//-- nor 	r11	,r4	,r0
9.	32'b000011_00101_00101_00101_00000000000;//-- sub	r5	,r5	,r5 
10.	32'b100000_00000_00001_00000_10000000000;//-- Addi 	r1	,r0	,1024    
11.	32'b100101_00001_00010_00000_00000000000;//-- st	r2	,r1	,0       
12.	32'b100100_00001_00101_00000_00000000000;//-- ld	r5	,r1	,0      
13.	32'b101000_00101_00000_00000_00000000001;//-- Bez	r5	,1           
14.	32'b001000_00101_00001_00111_00000000000;//-- xor	r7	,r5	,r1
15.	32'b001000_00101_00001_00000_00000000000;//-- xor	r0	,r5	,r1
16.	32'b001001_00011_01011_00111_00000000000;//-- sla	r7	,r3	,r11
17.	32'b001010_00011_01011_01000_00000000000;//-- sll	r8	,r3	,r11
18.	32'b001011_00011_00100_01001_00000000000;//-- sra	r9	,r3	,r4
19.	32'b001100_00011_00100_01010_00000000000;//-- srl	r10	,r3	,r4
20.	32'b100101_00001_00011_00000_00000000100;//-- st	r3	,r1	,4       
21.	32'b100101_00001_00100_00000_00000001000;//-- st	r4	,r1	,8       
22.	32'b100101_00001_00101_00000_00000001100;//-- st	r5	,r1	,12      
23.	32'b100101_00001_00110_00000_00000010000;//-- st	r6	,r1	,16      
24.	32'b100100_00001_01011_00000_00000000100;//-- ld	r11	,r1	,4      
25.	32'b100101_00001_00111_00000_00000010100;//-- st	r7	,r1	,20     
26.	32'b100101_00001_01000_00000_00000011000;//-- st	r8	,r1	,24     
27.	32'b100101_00001_01001_00000_00000011100;//-- st	r9	,r1	,28     
28.	32'b100101_00001_01010_00000_00000100000;//-- st	r10	,r1	,32     
29.	32'b100101_00001_01011_00000_00000100100;//-- st	r11	,r1	,36     
30.	32'b100000_00000_00001_00000_00000000011;//-- Addi 	r1	,r0	,3      
31.	32'b100000_00000_00100_00000_10000000000;//-- Addi	r4	,r0	,1024   
32.	32'b100000_00000_00010_00000_00000000000;//-- Addi 	r2	,r0	,0      
33.	32'b100000_00000_00011_00000_00000000001;//-- Addi 	r3	,r0	,1      
34.	32'b100000_00000_01001_00000_00000000010;//-- Addi 	r9	,r0	,2      
35.	32'b001010_00011_01001_01000_00000000000;//-- sll	r8	,r3	,r9 
36.	32'b000001_00100_01000_01000_00000000000;//-- Add 	r8	,r4	,r8 
37.	32'b100100_01000_00101_00000_00000000000;//-- ld	r5	,r8	,0       
38.	32'b100100_01000_00110_11111_11111111100;//-- ld	r6	,r8	,-4      
39.	32'b000011_00101_00110_01001_00000000000;//-- sub 	r9	,r5	,r6 
40.	32'b100000_00000_01010_10000_00000000000;//-- Addi 	r10	,r0	,0x8000 
41.	32'b100000_00000_01011_00000_00000010000;//-- Addi	r11	,r0	,16     
42.	32'b001010_01010_01011_01010_00000000000;//-- sll	r10	,r1	,r11
43.	32'b000101_01001_01010_01001_00000000000;//-- And 	r9	,r9	,r10 
44.	32'b101000_01001_00000_00000_00000000010;//-- Bez	r9	,2           
45.	32'b100101_01000_00101_11111_11111111100;//-- st	r5	,r8	,-4     
46.	32'b100101_01000_00110_00000_00000000000;//-- st	r6	,r8	,0      
47.	32'b100000_00011_00011_00000_00000000001;//-- Addi 	r3	,r3	,1      
48.	32'b101001_00001_00011_11111_11111110001;//-- BNE	r1	,r3	,-15    
49.	32'b100000_00010_00010_00000_00000000001;//-- Addi 	r2	,r2	,1      
50.	32'b101001_00001_00010_11111_11111101110;//-- BNE	r1	,r2	,-18    
51.	32'b100000_00000_00001_00000_10000000000;//-- Addi 	r1	,r0	,1024   
52.	32'b100100_00001_00010_00000_00000000000;//-- ld	,r2	,r1	,0      
53.	32'b100100_00001_00011_00000_00000000100;//-- ld	,r3	,r1	,4      
54.	32'b100100_00001_00100_00000_00000001000;//-- ld	,r4	,r1	,8
55.	32'b100100_00001_00100_00000_01000001000;//-- ld	,r4	,r1	,520 
56.	32'b100100_00001_00100_00000_10000001000;//-- ld	,r4	,r1	,1023
57.	32'b100100_00001_00101_00000_00000001100;//-- ld	,r5	,r1	,12     
58.	32'b100100_00001_00110_00000_00000010000;//-- ld	,r6	,r1	,16     
59.	32'b100100_00001_00111_00000_00000010100;//-- ld	,r7	,r1	,20     
60.	32'b100100_00001_01000_00000_00000011000;//-- ld	,r8	,r1	,24     
61.	32'b100100_00001_01001_00000_00000011100;//-- ld	,r9	,r1	,28     
62.	32'b100100_00001_01010_00000_00000100000;//-- ld	,r10,r1	,32     
63.	32'b100100_00001_01011_00000_00000100100;//-- ld	,r11,r1	,36     
64.	32'b101010_00000_00000_11111_11111111111;//-- JMP 	-1	
