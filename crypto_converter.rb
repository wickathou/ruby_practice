module Conversion
  class Conv
    attr_accessor :amount, :currency1, :currency2, :usdbtc, :copbtc

    def initialize
      p 'put amount'
      @amount = gets.chomp.to_i
      p 'put currency sending'
      @currency1 = gets.chomp
      p 'put currecy to receive'
      @currency2 = gets.chomp
      @usdbtc = 8900
      @copbtc = 30769230
    end

    def perform1
      case @currency1
      when 'usd'
        btc = @amount/@usdbtc
      when 'cop'
        btc = @amount/@copbtc
      when 'btc'
        btc = @amount
      end
      return btc
    end

    def perform2(btc)
      case @currency2
      when 'usd'
        return usd = btc*usdbtc
      when 'cop'
        return cop = btc*copbtc
      when 'btc'
        return btc
      end
    end
  end


end

class Currency
  include Conversion
  attr_accessor :usdbtc, :copbtc, :currency1, :currency2, :perform1
  def initialize (convertion = Conv.new)
    @usdbtc, @copbtc, @currency1, @currency2 = convertion.usdbtc, convertion.copbtc, convertion.currency1, convertion.currency2
    @perform1 = convertion.perform1
    @perform2 = convertion.perform2(@perform1)
  end
  def test
    @perform1
    @perform2
    # puts "------------------"
    # puts convertion.perform2(100)
  end
end


hoy = Currency.new()

p hoy.test
# p hoy.copbtc
#
# hoy.convert
#
# p hoy.perform1(1,2)
