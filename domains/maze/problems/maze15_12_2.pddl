(define (problem maze15_12_2) (:domain maze)
(:objects
	a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 - agent
	loc1x1 loc1x2 loc1x3 loc1x4 loc1x5 loc1x6 loc1x7 loc1x8 loc1x9 loc1x10 loc1x11 loc1x12 loc2x1 loc2x2 loc2x3 loc2x4 loc2x5 loc2x6 loc2x7 loc2x8 loc2x9 loc2x10 loc2x11 loc2x12 loc3x1 loc3x2 loc3x3 loc3x4 loc3x5 loc3x6 loc3x7 loc3x8 loc3x9 loc3x10 loc3x11 loc3x12 loc4x1 loc4x2 loc4x3 loc4x4 loc4x5 loc4x6 loc4x7 loc4x8 loc4x9 loc4x10 loc4x11 loc4x12 loc5x1 loc5x2 loc5x3 loc5x4 loc5x5 loc5x6 loc5x7 loc5x8 loc5x9 loc5x10 loc5x11 loc5x12 loc6x1 loc6x2 loc6x3 loc6x4 loc6x5 loc6x6 loc6x7 loc6x8 loc6x9 loc6x10 loc6x11 loc6x12 loc7x1 loc7x2 loc7x3 loc7x4 loc7x5 loc7x6 loc7x7 loc7x8 loc7x9 loc7x10 loc7x11 loc7x12 loc8x1 loc8x2 loc8x3 loc8x4 loc8x5 loc8x6 loc8x7 loc8x8 loc8x9 loc8x10 loc8x11 loc8x12 loc9x1 loc9x2 loc9x3 loc9x4 loc9x5 loc9x6 loc9x7 loc9x8 loc9x9 loc9x10 loc9x11 loc9x12 loc10x1 loc10x2 loc10x3 loc10x4 loc10x5 loc10x6 loc10x7 loc10x8 loc10x9 loc10x10 loc10x11 loc10x12 loc11x1 loc11x2 loc11x3 loc11x4 loc11x5 loc11x6 loc11x7 loc11x8 loc11x9 loc11x10 loc11x11 loc11x12 loc12x1 loc12x2 loc12x3 loc12x4 loc12x5 loc12x6 loc12x7 loc12x8 loc12x9 loc12x10 loc12x11 loc12x12 - location
	d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 d33 d34 d35 d36 d37 d38 d39 d40 d41 d42 d43 d44 d45 d46 d47 d48 d49 d50 d51 d52 d53 d54 d55 d56 d57 d58 d59 d60 d61 d62 d63 d64 d65 d66 d67 d68 d69 d70 d71 d72 d73 d74 d75 d76 d77 d78 d79 d80 d81 d82 d83 d84 d85 d86 d87 d88 d89 d90 d91 d92 d93 d94 d95 d96 d97 d98 d99 d100 d101 d102 d103 d104 d105 d106 d107 d108 d109 d110 d111 d112 d113 d114 d115 d116 d117 d118 d119 d120 d121 d122 d123 d124 d125 d126 d127 d128 d129 d130 d131 d132 d133 d134 d135 d136 d137 d138 d139 d140 d141 d142 d143 d144 d145 d146 d147 d148 d149 d150 d151 d152 d153 d154 d155 d156 d157 d158 d159 d160 d161 d162 d163 d164 d165 d166 d167 d168 d169 d170 d171 d172 d173 d174 d175 d176 d177 d178 d179 d180 d181 d182 d183 d184 d185 d186 d187 d188 d189 d190 d191 d192 d193 d194 d195 d196 d197 d198 d199 d200 d201 d202 d203 d204 d205 d206 d207 d208 d209 d210 d211 d212 d213 d214 d215 d216 d217 - door
	b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 - bridge
	bt1 bt2 bt3 bt4 bt5 bt6 bt7 bt8 bt9 bt10 bt11 bt12 bt13 bt14 bt15 bt16 bt17 bt18 bt19 bt20 bt21 bt22 bt23 bt24 bt25 bt26 - boat
	s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 - switch
)
(:init
	(at a1 loc1x2)
	(at a2 loc12x8)
	(at a3 loc2x5)
	(at a4 loc2x11)
	(at a5 loc10x10)
	(at a6 loc2x2)
	(at a7 loc1x7)
	(at a8 loc2x3)
	(at a9 loc1x5)
	(at a10 loc11x12)
	(at a11 loc3x12)
	(at a12 loc6x7)
	(at a13 loc6x4)
	(at a14 loc10x12)
	(at a15 loc1x2)
	(has-door d1 loc1x1 loc1x2)
	(has-door d1 loc1x2 loc1x1)
	(has-bridge b1 loc1x1 loc2x1)
	(has-bridge b1 loc2x1 loc1x1)
	(has-door d2 loc1x2 loc1x3)
	(has-door d2 loc1x3 loc1x2)
	(has-boat bt1 loc1x2 loc2x2)
	(has-boat bt1 loc2x2 loc1x2)
	(has-door d3 loc1x3 loc1x4)
	(has-door d3 loc1x4 loc1x3)
	(blocked loc1x3 loc1x4)
	(blocked loc1x4 loc1x3)
	(has-switch s1 loc9x12 loc1x3 loc1x4)
	(has-door d4 loc1x3 loc2x3)
	(has-door d4 loc2x3 loc1x3)
	(has-door d5 loc1x4 loc1x5)
	(has-door d5 loc1x5 loc1x4)
	(has-door d6 loc1x4 loc2x4)
	(has-door d6 loc2x4 loc1x4)
	(has-door d7 loc1x5 loc1x6)
	(has-door d7 loc1x6 loc1x5)
	(has-bridge b2 loc1x5 loc2x5)
	(has-bridge b2 loc2x5 loc1x5)
	(has-door d8 loc1x6 loc1x7)
	(has-door d8 loc1x7 loc1x6)
	(has-door d9 loc1x6 loc2x6)
	(has-door d9 loc2x6 loc1x6)
	(has-door d10 loc1x7 loc1x8)
	(has-door d10 loc1x8 loc1x7)
	(has-door d11 loc1x7 loc2x7)
	(has-door d11 loc2x7 loc1x7)
	(has-door d12 loc1x8 loc1x9)
	(has-door d12 loc1x9 loc1x8)
	(has-door d13 loc1x8 loc2x8)
	(has-door d13 loc2x8 loc1x8)
	(has-door d14 loc1x9 loc1x10)
	(has-door d14 loc1x10 loc1x9)
	(has-bridge b3 loc1x9 loc2x9)
	(has-bridge b3 loc2x9 loc1x9)
	(has-door d15 loc1x10 loc1x11)
	(has-door d15 loc1x11 loc1x10)
	(has-door d16 loc1x10 loc2x10)
	(has-door d16 loc2x10 loc1x10)
	(has-door d17 loc1x11 loc1x12)
	(has-door d17 loc1x12 loc1x11)
	(has-boat bt2 loc1x11 loc2x11)
	(has-boat bt2 loc2x11 loc1x11)
	(has-door d18 loc1x12 loc2x12)
	(has-door d18 loc2x12 loc1x12)
	(has-door d19 loc2x1 loc2x2)
	(has-door d19 loc2x2 loc2x1)
	(has-door d20 loc2x1 loc3x1)
	(has-door d20 loc3x1 loc2x1)
	(has-door d21 loc2x2 loc2x3)
	(has-door d21 loc2x3 loc2x2)
	(has-door d22 loc2x2 loc3x2)
	(has-door d22 loc3x2 loc2x2)
	(has-door d23 loc2x3 loc2x4)
	(has-door d23 loc2x4 loc2x3)
	(has-bridge b4 loc2x3 loc3x3)
	(has-bridge b4 loc3x3 loc2x3)
	(has-door d24 loc2x4 loc2x5)
	(has-door d24 loc2x5 loc2x4)
	(has-door d25 loc2x4 loc3x4)
	(has-door d25 loc3x4 loc2x4)
	(blocked loc2x4 loc3x4)
	(blocked loc3x4 loc2x4)
	(has-switch s2 loc3x10 loc2x4 loc3x4)
	(has-door d26 loc2x5 loc2x6)
	(has-door d26 loc2x6 loc2x5)
	(blocked loc2x5 loc2x6)
	(blocked loc2x6 loc2x5)
	(has-switch s3 loc11x9 loc2x5 loc2x6)
	(has-door d27 loc2x5 loc3x5)
	(has-door d27 loc3x5 loc2x5)
	(has-door d28 loc2x6 loc2x7)
	(has-door d28 loc2x7 loc2x6)
	(has-door d29 loc2x6 loc3x6)
	(has-door d29 loc3x6 loc2x6)
	(has-door d30 loc2x7 loc2x8)
	(has-door d30 loc2x8 loc2x7)
	(has-door d31 loc2x7 loc3x7)
	(has-door d31 loc3x7 loc2x7)
	(has-door d32 loc2x8 loc2x9)
	(has-door d32 loc2x9 loc2x8)
	(blocked loc2x8 loc2x9)
	(blocked loc2x9 loc2x8)
	(has-switch s4 loc7x2 loc2x8 loc2x9)
	(has-door d33 loc2x8 loc3x8)
	(has-door d33 loc3x8 loc2x8)
	(has-bridge b5 loc2x9 loc2x10)
	(has-bridge b5 loc2x10 loc2x9)
	(has-door d34 loc2x9 loc3x9)
	(has-door d34 loc3x9 loc2x9)
	(has-door d35 loc2x10 loc2x11)
	(has-door d35 loc2x11 loc2x10)
	(blocked loc2x10 loc2x11)
	(blocked loc2x11 loc2x10)
	(has-switch s5 loc3x6 loc2x10 loc2x11)
	(has-bridge b6 loc2x10 loc3x10)
	(has-bridge b6 loc3x10 loc2x10)
	(has-door d36 loc2x11 loc2x12)
	(has-door d36 loc2x12 loc2x11)
	(has-door d37 loc2x11 loc3x11)
	(has-door d37 loc3x11 loc2x11)
	(has-door d38 loc2x12 loc3x12)
	(has-door d38 loc3x12 loc2x12)
	(blocked loc2x12 loc3x12)
	(blocked loc3x12 loc2x12)
	(has-switch s6 loc10x8 loc2x12 loc3x12)
	(has-door d39 loc3x1 loc3x2)
	(has-door d39 loc3x2 loc3x1)
	(has-door d40 loc3x1 loc4x1)
	(has-door d40 loc4x1 loc3x1)
	(blocked loc3x1 loc4x1)
	(blocked loc4x1 loc3x1)
	(has-switch s7 loc3x12 loc3x1 loc4x1)
	(has-door d41 loc3x2 loc3x3)
	(has-door d41 loc3x3 loc3x2)
	(has-door d42 loc3x2 loc4x2)
	(has-door d42 loc4x2 loc3x2)
	(has-bridge b7 loc3x3 loc3x4)
	(has-bridge b7 loc3x4 loc3x3)
	(has-bridge b8 loc3x3 loc4x3)
	(has-bridge b8 loc4x3 loc3x3)
	(has-boat bt3 loc3x4 loc3x5)
	(has-boat bt3 loc3x5 loc3x4)
	(has-door d43 loc3x4 loc4x4)
	(has-door d43 loc4x4 loc3x4)
	(has-boat bt4 loc3x5 loc3x6)
	(has-boat bt4 loc3x6 loc3x5)
	(has-door d44 loc3x5 loc4x5)
	(has-door d44 loc4x5 loc3x5)
	(has-door d45 loc3x6 loc3x7)
	(has-door d45 loc3x7 loc3x6)
	(blocked loc3x6 loc3x7)
	(blocked loc3x7 loc3x6)
	(has-switch s8 loc9x2 loc3x6 loc3x7)
	(has-door d46 loc3x6 loc4x6)
	(has-door d46 loc4x6 loc3x6)
	(has-door d47 loc3x7 loc3x8)
	(has-door d47 loc3x8 loc3x7)
	(blocked loc3x7 loc3x8)
	(blocked loc3x8 loc3x7)
	(has-switch s9 loc9x8 loc3x7 loc3x8)
	(has-door d48 loc3x7 loc4x7)
	(has-door d48 loc4x7 loc3x7)
	(has-door d49 loc3x8 loc3x9)
	(has-door d49 loc3x9 loc3x8)
	(has-door d50 loc3x8 loc4x8)
	(has-door d50 loc4x8 loc3x8)
	(has-door d51 loc3x9 loc3x10)
	(has-door d51 loc3x10 loc3x9)
	(has-door d52 loc3x9 loc4x9)
	(has-door d52 loc4x9 loc3x9)
	(has-bridge b9 loc3x10 loc3x11)
	(has-bridge b9 loc3x11 loc3x10)
	(has-door d53 loc3x10 loc4x10)
	(has-door d53 loc4x10 loc3x10)
	(has-door d54 loc3x11 loc3x12)
	(has-door d54 loc3x12 loc3x11)
	(has-door d55 loc3x11 loc4x11)
	(has-door d55 loc4x11 loc3x11)
	(has-door d56 loc3x12 loc4x12)
	(has-door d56 loc4x12 loc3x12)
	(has-door d57 loc4x1 loc4x2)
	(has-door d57 loc4x2 loc4x1)
	(has-door d58 loc4x1 loc5x1)
	(has-door d58 loc5x1 loc4x1)
	(has-door d59 loc4x2 loc4x3)
	(has-door d59 loc4x3 loc4x2)
	(has-door d60 loc4x2 loc5x2)
	(has-door d60 loc5x2 loc4x2)
	(has-door d61 loc4x3 loc4x4)
	(has-door d61 loc4x4 loc4x3)
	(has-door d62 loc4x3 loc5x3)
	(has-door d62 loc5x3 loc4x3)
	(has-boat bt5 loc4x4 loc4x5)
	(has-boat bt5 loc4x5 loc4x4)
	(has-door d63 loc4x4 loc5x4)
	(has-door d63 loc5x4 loc4x4)
	(has-door d64 loc4x5 loc4x6)
	(has-door d64 loc4x6 loc4x5)
	(has-door d65 loc4x5 loc5x5)
	(has-door d65 loc5x5 loc4x5)
	(has-door d66 loc4x6 loc4x7)
	(has-door d66 loc4x7 loc4x6)
	(blocked loc4x6 loc4x7)
	(blocked loc4x7 loc4x6)
	(has-switch s10 loc5x7 loc4x6 loc4x7)
	(has-bridge b10 loc4x6 loc5x6)
	(has-bridge b10 loc5x6 loc4x6)
	(has-door d67 loc4x7 loc4x8)
	(has-door d67 loc4x8 loc4x7)
	(has-door d68 loc4x7 loc5x7)
	(has-door d68 loc5x7 loc4x7)
	(has-door d69 loc4x8 loc4x9)
	(has-door d69 loc4x9 loc4x8)
	(has-boat bt6 loc4x8 loc5x8)
	(has-boat bt6 loc5x8 loc4x8)
	(has-door d70 loc4x9 loc4x10)
	(has-door d70 loc4x10 loc4x9)
	(has-door d71 loc4x9 loc5x9)
	(has-door d71 loc5x9 loc4x9)
	(has-door d72 loc4x10 loc4x11)
	(has-door d72 loc4x11 loc4x10)
	(has-door d73 loc4x10 loc5x10)
	(has-door d73 loc5x10 loc4x10)
	(has-door d74 loc4x11 loc4x12)
	(has-door d74 loc4x12 loc4x11)
	(has-door d75 loc4x11 loc5x11)
	(has-door d75 loc5x11 loc4x11)
	(has-door d76 loc4x12 loc5x12)
	(has-door d76 loc5x12 loc4x12)
	(blocked loc4x12 loc5x12)
	(blocked loc5x12 loc4x12)
	(has-switch s11 loc11x1 loc4x12 loc5x12)
	(has-door d77 loc5x1 loc5x2)
	(has-door d77 loc5x2 loc5x1)
	(has-door d78 loc5x1 loc6x1)
	(has-door d78 loc6x1 loc5x1)
	(has-door d79 loc5x2 loc5x3)
	(has-door d79 loc5x3 loc5x2)
	(has-boat bt7 loc5x2 loc6x2)
	(has-boat bt7 loc6x2 loc5x2)
	(has-boat bt8 loc5x3 loc5x4)
	(has-boat bt8 loc5x4 loc5x3)
	(has-door d80 loc5x3 loc6x3)
	(has-door d80 loc6x3 loc5x3)
	(has-door d81 loc5x4 loc5x5)
	(has-door d81 loc5x5 loc5x4)
	(has-door d82 loc5x4 loc6x4)
	(has-door d82 loc6x4 loc5x4)
	(has-boat bt9 loc5x5 loc5x6)
	(has-boat bt9 loc5x6 loc5x5)
	(has-door d83 loc5x5 loc6x5)
	(has-door d83 loc6x5 loc5x5)
	(has-door d84 loc5x6 loc5x7)
	(has-door d84 loc5x7 loc5x6)
	(has-door d85 loc5x6 loc6x6)
	(has-door d85 loc6x6 loc5x6)
	(blocked loc5x6 loc6x6)
	(blocked loc6x6 loc5x6)
	(has-switch s12 loc9x2 loc5x6 loc6x6)
	(has-door d86 loc5x7 loc5x8)
	(has-door d86 loc5x8 loc5x7)
	(blocked loc5x7 loc5x8)
	(blocked loc5x8 loc5x7)
	(has-switch s13 loc11x3 loc5x7 loc5x8)
	(has-boat bt10 loc5x7 loc6x7)
	(has-boat bt10 loc6x7 loc5x7)
	(has-door d87 loc5x8 loc5x9)
	(has-door d87 loc5x9 loc5x8)
	(has-boat bt11 loc5x8 loc6x8)
	(has-boat bt11 loc6x8 loc5x8)
	(has-door d88 loc5x9 loc5x10)
	(has-door d88 loc5x10 loc5x9)
	(has-door d89 loc5x9 loc6x9)
	(has-door d89 loc6x9 loc5x9)
	(has-door d90 loc5x10 loc5x11)
	(has-door d90 loc5x11 loc5x10)
	(blocked loc5x10 loc5x11)
	(blocked loc5x11 loc5x10)
	(has-switch s14 loc3x4 loc5x10 loc5x11)
	(has-door d91 loc5x10 loc6x10)
	(has-door d91 loc6x10 loc5x10)
	(blocked loc5x10 loc6x10)
	(blocked loc6x10 loc5x10)
	(has-switch s15 loc5x1 loc5x10 loc6x10)
	(has-door d92 loc5x11 loc5x12)
	(has-door d92 loc5x12 loc5x11)
	(has-door d93 loc5x11 loc6x11)
	(has-door d93 loc6x11 loc5x11)
	(has-bridge b11 loc5x12 loc6x12)
	(has-bridge b11 loc6x12 loc5x12)
	(has-door d94 loc6x1 loc6x2)
	(has-door d94 loc6x2 loc6x1)
	(has-door d95 loc6x1 loc7x1)
	(has-door d95 loc7x1 loc6x1)
	(has-door d96 loc6x2 loc6x3)
	(has-door d96 loc6x3 loc6x2)
	(has-door d97 loc6x2 loc7x2)
	(has-door d97 loc7x2 loc6x2)
	(blocked loc6x2 loc7x2)
	(blocked loc7x2 loc6x2)
	(has-switch s16 loc3x8 loc6x2 loc7x2)
	(has-bridge b12 loc6x3 loc6x4)
	(has-bridge b12 loc6x4 loc6x3)
	(has-bridge b13 loc6x3 loc7x3)
	(has-bridge b13 loc7x3 loc6x3)
	(has-door d98 loc6x4 loc6x5)
	(has-door d98 loc6x5 loc6x4)
	(has-door d99 loc6x4 loc7x4)
	(has-door d99 loc7x4 loc6x4)
	(has-door d100 loc6x5 loc6x6)
	(has-door d100 loc6x6 loc6x5)
	(has-door d101 loc6x5 loc7x5)
	(has-door d101 loc7x5 loc6x5)
	(blocked loc6x5 loc7x5)
	(blocked loc7x5 loc6x5)
	(has-switch s17 loc3x5 loc6x5 loc7x5)
	(has-bridge b14 loc6x6 loc6x7)
	(has-bridge b14 loc6x7 loc6x6)
	(has-door d102 loc6x6 loc7x6)
	(has-door d102 loc7x6 loc6x6)
	(has-boat bt12 loc6x7 loc6x8)
	(has-boat bt12 loc6x8 loc6x7)
	(has-door d103 loc6x7 loc7x7)
	(has-door d103 loc7x7 loc6x7)
	(has-door d104 loc6x8 loc6x9)
	(has-door d104 loc6x9 loc6x8)
	(has-door d105 loc6x8 loc7x8)
	(has-door d105 loc7x8 loc6x8)
	(has-door d106 loc6x9 loc6x10)
	(has-door d106 loc6x10 loc6x9)
	(has-bridge b15 loc6x9 loc7x9)
	(has-bridge b15 loc7x9 loc6x9)
	(has-door d107 loc6x10 loc6x11)
	(has-door d107 loc6x11 loc6x10)
	(blocked loc6x10 loc6x11)
	(blocked loc6x11 loc6x10)
	(has-switch s18 loc4x8 loc6x10 loc6x11)
	(has-door d108 loc6x10 loc7x10)
	(has-door d108 loc7x10 loc6x10)
	(has-door d109 loc6x11 loc6x12)
	(has-door d109 loc6x12 loc6x11)
	(has-door d110 loc6x11 loc7x11)
	(has-door d110 loc7x11 loc6x11)
	(has-door d111 loc6x12 loc7x12)
	(has-door d111 loc7x12 loc6x12)
	(has-door d112 loc7x1 loc7x2)
	(has-door d112 loc7x2 loc7x1)
	(has-door d113 loc7x1 loc8x1)
	(has-door d113 loc8x1 loc7x1)
	(has-door d114 loc7x2 loc7x3)
	(has-door d114 loc7x3 loc7x2)
	(has-door d115 loc7x2 loc8x2)
	(has-door d115 loc8x2 loc7x2)
	(blocked loc7x2 loc8x2)
	(blocked loc8x2 loc7x2)
	(has-switch s19 loc6x4 loc7x2 loc8x2)
	(has-door d116 loc7x3 loc7x4)
	(has-door d116 loc7x4 loc7x3)
	(has-door d117 loc7x3 loc8x3)
	(has-door d117 loc8x3 loc7x3)
	(has-door d118 loc7x4 loc7x5)
	(has-door d118 loc7x5 loc7x4)
	(has-door d119 loc7x4 loc8x4)
	(has-door d119 loc8x4 loc7x4)
	(has-door d120 loc7x5 loc7x6)
	(has-door d120 loc7x6 loc7x5)
	(has-door d121 loc7x5 loc8x5)
	(has-door d121 loc8x5 loc7x5)
	(has-door d122 loc7x6 loc7x7)
	(has-door d122 loc7x7 loc7x6)
	(has-boat bt13 loc7x6 loc8x6)
	(has-boat bt13 loc8x6 loc7x6)
	(has-door d123 loc7x7 loc7x8)
	(has-door d123 loc7x8 loc7x7)
	(has-door d124 loc7x7 loc8x7)
	(has-door d124 loc8x7 loc7x7)
	(blocked loc7x7 loc8x7)
	(blocked loc8x7 loc7x7)
	(has-switch s20 loc6x8 loc7x7 loc8x7)
	(has-door d125 loc7x8 loc7x9)
	(has-door d125 loc7x9 loc7x8)
	(has-door d126 loc7x8 loc8x8)
	(has-door d126 loc8x8 loc7x8)
	(has-boat bt14 loc7x9 loc7x10)
	(has-boat bt14 loc7x10 loc7x9)
	(has-door d127 loc7x9 loc8x9)
	(has-door d127 loc8x9 loc7x9)
	(has-boat bt15 loc7x10 loc7x11)
	(has-boat bt15 loc7x11 loc7x10)
	(has-door d128 loc7x10 loc8x10)
	(has-door d128 loc8x10 loc7x10)
	(has-door d129 loc7x11 loc7x12)
	(has-door d129 loc7x12 loc7x11)
	(has-door d130 loc7x11 loc8x11)
	(has-door d130 loc8x11 loc7x11)
	(blocked loc7x11 loc8x11)
	(blocked loc8x11 loc7x11)
	(has-switch s21 loc3x10 loc7x11 loc8x11)
	(has-door d131 loc7x12 loc8x12)
	(has-door d131 loc8x12 loc7x12)
	(blocked loc7x12 loc8x12)
	(blocked loc8x12 loc7x12)
	(has-switch s22 loc7x5 loc7x12 loc8x12)
	(has-door d132 loc8x1 loc8x2)
	(has-door d132 loc8x2 loc8x1)
	(has-door d133 loc8x1 loc9x1)
	(has-door d133 loc9x1 loc8x1)
	(has-door d134 loc8x2 loc8x3)
	(has-door d134 loc8x3 loc8x2)
	(has-door d135 loc8x2 loc9x2)
	(has-door d135 loc9x2 loc8x2)
	(has-door d136 loc8x3 loc8x4)
	(has-door d136 loc8x4 loc8x3)
	(has-bridge b16 loc8x3 loc9x3)
	(has-bridge b16 loc9x3 loc8x3)
	(has-door d137 loc8x4 loc8x5)
	(has-door d137 loc8x5 loc8x4)
	(has-door d138 loc8x4 loc9x4)
	(has-door d138 loc9x4 loc8x4)
	(has-bridge b17 loc8x5 loc8x6)
	(has-bridge b17 loc8x6 loc8x5)
	(has-boat bt16 loc8x5 loc9x5)
	(has-boat bt16 loc9x5 loc8x5)
	(has-boat bt17 loc8x6 loc8x7)
	(has-boat bt17 loc8x7 loc8x6)
	(has-door d139 loc8x6 loc9x6)
	(has-door d139 loc9x6 loc8x6)
	(has-door d140 loc8x7 loc8x8)
	(has-door d140 loc8x8 loc8x7)
	(has-door d141 loc8x7 loc9x7)
	(has-door d141 loc9x7 loc8x7)
	(has-door d142 loc8x8 loc8x9)
	(has-door d142 loc8x9 loc8x8)
	(has-door d143 loc8x8 loc9x8)
	(has-door d143 loc9x8 loc8x8)
	(blocked loc8x8 loc9x8)
	(blocked loc9x8 loc8x8)
	(has-switch s23 loc8x6 loc8x8 loc9x8)
	(has-door d144 loc8x9 loc8x10)
	(has-door d144 loc8x10 loc8x9)
	(has-door d145 loc8x9 loc9x9)
	(has-door d145 loc9x9 loc8x9)
	(has-door d146 loc8x10 loc8x11)
	(has-door d146 loc8x11 loc8x10)
	(has-door d147 loc8x10 loc9x10)
	(has-door d147 loc9x10 loc8x10)
	(has-door d148 loc8x11 loc8x12)
	(has-door d148 loc8x12 loc8x11)
	(has-door d149 loc8x11 loc9x11)
	(has-door d149 loc9x11 loc8x11)
	(has-door d150 loc8x12 loc9x12)
	(has-door d150 loc9x12 loc8x12)
	(blocked loc8x12 loc9x12)
	(blocked loc9x12 loc8x12)
	(has-switch s24 loc4x12 loc8x12 loc9x12)
	(has-door d151 loc9x1 loc9x2)
	(has-door d151 loc9x2 loc9x1)
	(has-door d152 loc9x1 loc10x1)
	(has-door d152 loc10x1 loc9x1)
	(has-door d153 loc9x2 loc9x3)
	(has-door d153 loc9x3 loc9x2)
	(has-bridge b18 loc9x2 loc10x2)
	(has-bridge b18 loc10x2 loc9x2)
	(has-door d154 loc9x3 loc9x4)
	(has-door d154 loc9x4 loc9x3)
	(has-door d155 loc9x3 loc10x3)
	(has-door d155 loc10x3 loc9x3)
	(has-door d156 loc9x4 loc9x5)
	(has-door d156 loc9x5 loc9x4)
	(has-door d157 loc9x4 loc10x4)
	(has-door d157 loc10x4 loc9x4)
	(has-door d158 loc9x5 loc9x6)
	(has-door d158 loc9x6 loc9x5)
	(has-boat bt18 loc9x5 loc10x5)
	(has-boat bt18 loc10x5 loc9x5)
	(has-door d159 loc9x6 loc9x7)
	(has-door d159 loc9x7 loc9x6)
	(has-door d160 loc9x6 loc10x6)
	(has-door d160 loc10x6 loc9x6)
	(has-door d161 loc9x7 loc9x8)
	(has-door d161 loc9x8 loc9x7)
	(blocked loc9x7 loc9x8)
	(blocked loc9x8 loc9x7)
	(has-switch s25 loc7x10 loc9x7 loc9x8)
	(has-door d162 loc9x7 loc10x7)
	(has-door d162 loc10x7 loc9x7)
	(has-bridge b19 loc9x8 loc9x9)
	(has-bridge b19 loc9x9 loc9x8)
	(has-door d163 loc9x8 loc10x8)
	(has-door d163 loc10x8 loc9x8)
	(has-door d164 loc9x9 loc9x10)
	(has-door d164 loc9x10 loc9x9)
	(has-boat bt19 loc9x9 loc10x9)
	(has-boat bt19 loc10x9 loc9x9)
	(has-door d165 loc9x10 loc9x11)
	(has-door d165 loc9x11 loc9x10)
	(has-door d166 loc9x10 loc10x10)
	(has-door d166 loc10x10 loc9x10)
	(has-door d167 loc9x11 loc9x12)
	(has-door d167 loc9x12 loc9x11)
	(has-door d168 loc9x11 loc10x11)
	(has-door d168 loc10x11 loc9x11)
	(has-door d169 loc9x12 loc10x12)
	(has-door d169 loc10x12 loc9x12)
	(has-door d170 loc10x1 loc10x2)
	(has-door d170 loc10x2 loc10x1)
	(blocked loc10x1 loc10x2)
	(blocked loc10x2 loc10x1)
	(has-switch s26 loc8x9 loc10x1 loc10x2)
	(has-door d171 loc10x1 loc11x1)
	(has-door d171 loc11x1 loc10x1)
	(blocked loc10x1 loc11x1)
	(blocked loc11x1 loc10x1)
	(has-switch s27 loc9x3 loc10x1 loc11x1)
	(has-door d172 loc10x2 loc10x3)
	(has-door d172 loc10x3 loc10x2)
	(has-door d173 loc10x2 loc11x2)
	(has-door d173 loc11x2 loc10x2)
	(has-door d174 loc10x3 loc10x4)
	(has-door d174 loc10x4 loc10x3)
	(has-door d175 loc10x3 loc11x3)
	(has-door d175 loc11x3 loc10x3)
	(has-door d176 loc10x4 loc10x5)
	(has-door d176 loc10x5 loc10x4)
	(has-door d177 loc10x4 loc11x4)
	(has-door d177 loc11x4 loc10x4)
	(has-door d178 loc10x5 loc10x6)
	(has-door d178 loc10x6 loc10x5)
	(has-boat bt20 loc10x5 loc11x5)
	(has-boat bt20 loc11x5 loc10x5)
	(has-door d179 loc10x6 loc10x7)
	(has-door d179 loc10x7 loc10x6)
	(has-door d180 loc10x6 loc11x6)
	(has-door d180 loc11x6 loc10x6)
	(has-door d181 loc10x7 loc10x8)
	(has-door d181 loc10x8 loc10x7)
	(has-door d182 loc10x7 loc11x7)
	(has-door d182 loc11x7 loc10x7)
	(has-door d183 loc10x8 loc10x9)
	(has-door d183 loc10x9 loc10x8)
	(has-door d184 loc10x8 loc11x8)
	(has-door d184 loc11x8 loc10x8)
	(has-door d185 loc10x9 loc10x10)
	(has-door d185 loc10x10 loc10x9)
	(has-door d186 loc10x9 loc11x9)
	(has-door d186 loc11x9 loc10x9)
	(blocked loc10x9 loc11x9)
	(blocked loc11x9 loc10x9)
	(has-switch s28 loc2x8 loc10x9 loc11x9)
	(has-door d187 loc10x10 loc10x11)
	(has-door d187 loc10x11 loc10x10)
	(blocked loc10x10 loc10x11)
	(blocked loc10x11 loc10x10)
	(has-switch s29 loc1x12 loc10x10 loc10x11)
	(has-boat bt21 loc10x10 loc11x10)
	(has-boat bt21 loc11x10 loc10x10)
	(has-boat bt22 loc10x11 loc10x12)
	(has-boat bt22 loc10x12 loc10x11)
	(has-door d188 loc10x11 loc11x11)
	(has-door d188 loc11x11 loc10x11)
	(has-door d189 loc10x12 loc11x12)
	(has-door d189 loc11x12 loc10x12)
	(has-door d190 loc11x1 loc11x2)
	(has-door d190 loc11x2 loc11x1)
	(has-door d191 loc11x1 loc12x1)
	(has-door d191 loc12x1 loc11x1)
	(has-door d192 loc11x2 loc11x3)
	(has-door d192 loc11x3 loc11x2)
	(has-door d193 loc11x2 loc12x2)
	(has-door d193 loc12x2 loc11x2)
	(has-boat bt23 loc11x3 loc11x4)
	(has-boat bt23 loc11x4 loc11x3)
	(has-door d194 loc11x3 loc12x3)
	(has-door d194 loc12x3 loc11x3)
	(has-door d195 loc11x4 loc11x5)
	(has-door d195 loc11x5 loc11x4)
	(has-door d196 loc11x4 loc12x4)
	(has-door d196 loc12x4 loc11x4)
	(has-door d197 loc11x5 loc11x6)
	(has-door d197 loc11x6 loc11x5)
	(has-boat bt24 loc11x5 loc12x5)
	(has-boat bt24 loc12x5 loc11x5)
	(has-bridge b20 loc11x6 loc11x7)
	(has-bridge b20 loc11x7 loc11x6)
	(has-boat bt25 loc11x6 loc12x6)
	(has-boat bt25 loc12x6 loc11x6)
	(has-door d198 loc11x7 loc11x8)
	(has-door d198 loc11x8 loc11x7)
	(has-door d199 loc11x7 loc12x7)
	(has-door d199 loc12x7 loc11x7)
	(has-door d200 loc11x8 loc11x9)
	(has-door d200 loc11x9 loc11x8)
	(has-door d201 loc11x8 loc12x8)
	(has-door d201 loc12x8 loc11x8)
	(blocked loc11x8 loc12x8)
	(blocked loc12x8 loc11x8)
	(has-switch s30 loc8x7 loc11x8 loc12x8)
	(has-door d202 loc11x9 loc11x10)
	(has-door d202 loc11x10 loc11x9)
	(has-door d203 loc11x9 loc12x9)
	(has-door d203 loc12x9 loc11x9)
	(has-door d204 loc11x10 loc11x11)
	(has-door d204 loc11x11 loc11x10)
	(has-door d205 loc11x10 loc12x10)
	(has-door d205 loc12x10 loc11x10)
	(has-bridge b21 loc11x11 loc11x12)
	(has-bridge b21 loc11x12 loc11x11)
	(has-door d206 loc11x11 loc12x11)
	(has-door d206 loc12x11 loc11x11)
	(has-door d207 loc11x12 loc12x12)
	(has-door d207 loc12x12 loc11x12)
	(blocked loc11x12 loc12x12)
	(blocked loc12x12 loc11x12)
	(has-switch s31 loc4x1 loc11x12 loc12x12)
	(has-door d208 loc12x1 loc12x2)
	(has-door d208 loc12x2 loc12x1)
	(has-door d209 loc12x2 loc12x3)
	(has-door d209 loc12x3 loc12x2)
	(has-door d210 loc12x3 loc12x4)
	(has-door d210 loc12x4 loc12x3)
	(has-door d211 loc12x4 loc12x5)
	(has-door d211 loc12x5 loc12x4)
	(has-door d212 loc12x5 loc12x6)
	(has-door d212 loc12x6 loc12x5)
	(has-boat bt26 loc12x6 loc12x7)
	(has-boat bt26 loc12x7 loc12x6)
	(has-door d213 loc12x7 loc12x8)
	(has-door d213 loc12x8 loc12x7)
	(has-door d214 loc12x8 loc12x9)
	(has-door d214 loc12x9 loc12x8)
	(has-door d215 loc12x9 loc12x10)
	(has-door d215 loc12x10 loc12x9)
	(blocked loc12x9 loc12x10)
	(blocked loc12x10 loc12x9)
	(has-switch s32 loc12x3 loc12x9 loc12x10)
	(has-door d216 loc12x10 loc12x11)
	(has-door d216 loc12x11 loc12x10)
	(has-door d217 loc12x11 loc12x12)
	(has-door d217 loc12x12 loc12x11)
	(blocked loc12x11 loc12x12)
	(blocked loc12x12 loc12x11)
	(has-switch s33 loc11x4 loc12x11 loc12x12)
)
(:goal (and
	(at a1 loc2x9)
	(at a2 loc7x8)
	(at a3 loc1x10)
	(at a4 loc1x9)
	(at a5 loc10x8)
	(at a6 loc9x11)
	(at a7 loc10x4)
	(at a8 loc4x6)
	(at a9 loc9x3)
	(at a10 loc7x10)
	(at a11 loc4x1)
	(at a12 loc12x10)
	(at a13 loc11x10)
	(at a14 loc6x8)
	(at a15 loc3x3)
))
)