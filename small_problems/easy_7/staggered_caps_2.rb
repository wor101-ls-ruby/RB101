def staggered_case(string)
  count = 0
  result = string.chars.map do |char|
    if char.match?(/[[:alpha:]]/)
      count.even? ? char.upcase! : char.downcase!
      count += 1
    end
    char
  end
  p result.join
end


def staggered_case_userchoice(string, ignore)
  count = 0
  result = string.chars.map do |char|
    if char.match?(/[[:alpha:]]/)
      count.even? ? char.upcase! : char.downcase!
      count += 1
    elsif ignore == false
      count += 1
    end
    char
  end
  p result.join
end






# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case_userchoice('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
p staggered_case_userchoice('ALL CAPS', true) == 'AlL cApS'
p staggered_case_userchoice('ignore 77 the 444 numbers',  true) == 'IgNoRe 77 ThE 444 nUmBeRs'