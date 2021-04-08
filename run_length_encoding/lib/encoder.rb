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

  def get_all_runs(str)
    str.chars.chunk(&:itself).map do |char|
      char.last.join
    end
  end

  def get_lengths_of_all_runs(str)
    get_all_runs(str).map(&:length)
  end

  def get_first_letter_and_length_of_runs(str)
    get_all_runs(str).map do |chunk|
      chunk[0] + chunk.length.to_s
    end
  end

  def get_first_letter_and_length_of_runs_with_special(str)
    get_all_runs(str).map do |chunk|
      chunk.size == 1 ? chunk[0] : chunk[0] + chunk.length.to_s
    end
  end
end
