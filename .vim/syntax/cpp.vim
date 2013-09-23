"======================================================== 
" Highlight All Function 
"======================================================== 
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2 
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1 
"hi cFunction gui=NONE guifg=#B5A1FF 
hi def link cFunction Function

"======================================================== 
" Highlight All Math Operator 
"======================================================== 
" C math operators 
syn match cMathOperator display "[-+\*/%=]" 
" C pointer operators 
syn match cPointerOperator display "->\|\." 
" C logical operators - boolean results 
syn match cLogicalOperator display "[!<>]=\=" 
syn match cLogicalOperator display "==" 
" C bit operators 
syn match cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\=" 
syn match cBinaryOperator display "\~" 
syn match cBinaryOperatorError display "\~=" 
" More C logical operators - highlight in preference to binary 
syn match cLogicalOperator display "&&\|||" 
syn match cLogicalOperatorError display "\(&&\|||\)=" 
" Math Operator 
"hi def link wyoperator operator
"hi def link cMathOperator wyoperator
"hi def link cPointerOperator wyoperator 
"hi def link cLogicalOperator wyoperator
"hi def link cBinaryOperator wyoperator 
"hi def link cBinaryOperatorError wyoperator
"hi def link cLogicalOperator wyoperator
"hi def link cLogicalOperatorError wyoperator
