# frozen_string_literal: false

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

  def get_length_of_first_run(str)
    count = 0
    str.chars.each do |char|
      break unless char == str[0]

      count += 1
    end
    count
  end

  def get_first_run(str)
    string = ''
    str.chars.each do |char|
      break unless char == str[0]

      string << char
    end
    string
  end

  def get_after_first_run(str)
    first_length = get_first_run(str).size
    str.slice(first_length..-1)
  end
  
end
