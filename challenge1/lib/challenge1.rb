class Challenge1
  def self.balanced?(_string)
    value = 0
    result = true
    _string.each_char do |i|
      if i == '('
        value += 1
      elsif i == ')'
        value -= 1
      end
      if i == '{'
        value += 2
      elsif i == '}'
        value -= 2
      end
      if i == '['
        value += 3
      elsif i == ']'
        value -= 3    
      end
    end
    result = false if value != 0
    result
  end
end

# class Challenge1
#   def self.balanced?(_string)
#     _string.each_char.with_index do |i, start_index|
#       if i == '('
#         puts '('
#         _string[start_index..-1].each_char.with_index do |j, end_index|
#           if j == ')'
#             puts ')'
#             new_string = _string[start_index + 1, end_index]
#             balanced?(new_string)
#           end # 2nd if end
#         end # 2nd do end
#         return false
#       end # 1st if end
#       if i == '['
#         # puts '['
#         _string[start_index..-1].each_char.with_index do |j, end_index|
#           if j == ']'
#             puts ']'
#             new_string = _string[start_index + 1, end_index]
#             balanced?(new_string)
#           end # 2nd if end
#         end # 2nd do end
#         return false
#       end # 1st if end
#       if i == '{'
#         puts '{'
#         _string[start_index..-1].each_char.with_index do |j, end_index|
#           if j == '}'
#             puts '}'
#             new_string = _string[start_index + 1, end_index]
#             balanced?(new_string)
#           end # 2nd if end
#         end # 2nd do end
#         return false
#       end # 1st if end
#     end # 1st do end
#     return true
#   end # def end
  
# end # class end