# frozen_string_literal: true

# This Encoder class includes methods that will chain together and encode strings
class Encoder
  def get_length(str)
    str.length
  end

  def get_first_letter(str)
    str[0]
  end

  def get_first_letter_and_length(str)
    get_first_letter(str) + get_length(str).to_s
  end

  def string_to_list(str)
    str.split('')
  end

  def is_all_as?(str)
    str.chars.all?('a')
  end

  def is_all_this_letter?(str, chr)
    str.chars.all?(chr)
  end

  def is_all_first_letter?(str)
    str.chars.all?(str[0])
  end
end
