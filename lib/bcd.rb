# Methods to translate to and from binary coded decimal
#
# Author:: Dafydd Crosby <dafydd@dafyddcrosby.com>
# Copyright:: Copyright 2013, Dafydd Crosby
# License:: BSD 2-clause

module BCD
  # Translates binary coded decimal into an integer
  def self.decode(bcd)
    raise ArgumentError, 'Argument is not numeric' unless bcd.is_a? Numeric
    raise ArgumentError, 'Cannot be a negative integer' if bcd < 0

    binstring = ''
    while true do
      q, r = bcd.divmod(10)
      nibble = r.to_s(2)
      while nibble.length < 4 do
        nibble.prepend('0')
      end
      binstring.prepend(nibble)
      q == 0 ? break : bcd = q
    end

    binstring.to_i(2)
  end

  # Translate an integer into binary coded decimal
  def self.encode(int)
    raise ArgumentError, 'Argument is not numeric' unless int.is_a? Numeric
    raise ArgumentError, 'Cannot be a negative integer' if int < 0

    bcdstring = ''
    while int > 0 do
      nibble = int % 16
      bcdstring.prepend(nibble.to_s)
      int >>= 4
    end
    bcdstring.to_i
  end
end
