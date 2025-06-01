# frozen_string_literal: true

# rbs_inline: enabled

# Methods to translate to and from binary coded decimal
#
# Author:: David Crosby <dafydd@dafyddcrosby.com>
# Copyright:: Copyright 2013-2022 David Crosby
# License:: BSD 2-clause

module BCD
  # Translates binary coded decimal into an integer
  # : (Integer) -> Integer
  def self.decode(bcd)
    raise ArgumentError, "Argument is not Integer" unless bcd.is_a? Integer
    raise ArgumentError, "Cannot be a negative integer" if bcd.negative?

    binstring = String.new
    loop do
      q, r = bcd.divmod(10)
      nibble = r.to_s(2)
      nibble.prepend("0") while nibble.length < 4
      binstring.prepend(nibble)
      q.zero? ? break : bcd = q
    end

    binstring.to_i(2)
  end

  # Translate an integer into binary coded decimal
  # : (Integer) -> Integer
  def self.encode(int)
    raise ArgumentError, "Argument is not Integer" unless int.is_a? Integer
    raise ArgumentError, "Cannot be a negative integer" if int.negative?

    bcdstring = String.new
    while int.positive?
      nibble = int % 16
      bcdstring.prepend(nibble.to_s)
      int >>= 4
    end
    bcdstring.to_i
  end
end
