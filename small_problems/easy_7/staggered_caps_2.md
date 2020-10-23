**Problems**
Modify the method from the previous exercise so it ignores non-alphabetic characters when determining 
whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be 
included in the return value; they just don't count when toggling the desired case.

Rules:
Explicit
  - Input: String
  - Output: String
  - skip non-alphabetic characters when determining case


**Examples / Test Cases**
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'




**Data Structures**
- Input String
- Output String
- Array of characters
- 

**Algorithm**
