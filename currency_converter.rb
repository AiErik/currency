class CurrencyConverter
  @@converter_hash = {
    :USD => {USD: 1.00, EUR: 0.94, GBP: 0.81, JPY: 115.30},
    :EUR => {USD: 1.06, EUR: 1.00, GBP: 0.86, JPY: 122.56},
    :GBP => {USD: 1.23, EUR: 1.16, GBP: 1.00, JPY: 141.91},
    :JPY => {USD: 0.0087, EUR: 0.0082, GBP: 0.0071, JPY: 1.00}
  }
  class << self
    attr_accessor :converter_hash

    def get_hash
      @@converter_hash
    end

    def convert(string1, string2)
      self.get_hash[string1][string2]
    end
  end
end

puts CurrencyConverter.convert(:USD, :EUR)
