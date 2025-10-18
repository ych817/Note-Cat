- $f: A\to G$
- $\bar\varphi: W(A)\to G$ is a semigroup homomorphism ,
  - $\bar\varphi: a\mapsto f(a)$ ,
  - $\bar\varphi:a^{-1}\mapsto (f(a))^{-1}$ ,
  - $\bar\varphi : (w_1\cdot w_2)\mapsto \bar\varphi(w_1)\cdot \bar\varphi(w_2)$ ,
- $\varphi: F(A)\to G$ , is a group homomorphism , 

---

- $A$ is the alphabet
- $W(A)=\{\mu(a_1,a_2),\iota(a)\}$ is the language over $A$
- $F(A)$ is the free group



$\qquad\begin{xy}\xymatrix@!C=2cm{
F(A) 
\ar@{-->}[d]_{\varphi}
&  
UF(A)
\ar[d]
& 
A
\ar[l]
\ar[dl]
\ar@{|->}@`{[]+/u+3pc/,[ll]+/u+3pc/}[ll]_{F}
\\
G 
\ar@{|->}@`{[]+/d+2pc/,[r]+/d+2pc/}[r]_{U}
\save[].[u]*+<5pt>[F-:<5pt>:ForestGreen]\frm{}!DL*!R
{\sf Grp}\restore
& 
U(G)
\save[].[u].[ur]*+<5pt>[F-:<5pt>:ForestGreen]\frm{}!DR*!L
{\sf Set}\restore
}\end{xy}$ $\qquad\begin{xy}\xymatrix@!C=2cm{
F(A)
\ar@{-->}[d]_{\varphi} & 
A
\ar[l]_{j}
\ar[dl]^{f} \\
G 
}\end{xy}$

$\qquad\begin{xy}\xymatrix@!C=2cm{
U(G) 
& 
FU(G)
\ar[r]
& 
G 
\ar@{|->}@`{[]+/u+3pc/,[ll]+/u+3pc/}[ll]_{U}
\\
A
\save[].[u]*+<5pt>[F-:<5pt>:ForestGreen]\frm{}!DL*!R
{\sf Set}\restore
\ar@{|->}@`{[]+/d+2pc/,[r]+/d+2pc/}[r]_{F}
\ar@{-->}[u]
& 
F(A) 
\ar@{-->}[u]
\ar[ur]
\save[].[u].[ur]*+<5pt>[F-:<5pt>:ForestGreen]\frm{}!DR*!L
{\sf Grp}\restore
}\end{xy}$ 



