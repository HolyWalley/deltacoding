# frozen_string_literal: true

class Delta
  class << self
    def encode(array_of_digits)
      array_of_digits.map.with_index do |elem, index|
        next elem if index.zero?

        elem - array_of_digits[index - 1]
      end
    end

    def decode(array_of_digits)
      array_of_digits.each.with_index.each_with_object([]) do |(elem, index), arr|
        next arr << elem if index.zero?

        arr << elem + arr[index - 1]
      end
    end

    def asci_encode(string)
      encode(string.split('').map(&:ord))
    end

    def asci_decode(array_of_digits)
      decode(array_of_digits).map { |e| e.chr(Encoding::UTF_8) }.join
    end
  end
end
