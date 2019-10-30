module Conversion
  class Conv
    attr_accessor :amount, :currency1, :currency2, :usdbtc, :copbtc

    def initialize
      p 'put amount'
      @amount = gets.chomp.to_i
      p 'put currency sending'
      @currency1 = gets.chomp.to_i
      p 'put currecy to receive'
      @currency2 = gets.chomp.to_i
      @usdbtc = 8900
      @copbtc = 30769230
    end

    private

    def perform1
      case currency1
      when 'usd'
        btc = @amount/@usdbtc
      when 'cop'
        btc = @amount/@copbtc
      when 'btc'
        btc = @amount
      end
    end

    def perform2(btc)
      case currency2
      when 'usd'
        usd = btc*usdbtc
      when 'cop'
        cop = btc*copbtc
      when 'btc'
        btc
      end
    end

  end
  

end

class Currency
  include Conversion
  attr_accessor :usdbtc
  attr_accessor :copbtc
  def initialize (usdbtc, copbtc)
    @usdbtc, @copbtc = usdbtc, copbtc
  end
end


hoy = Currency.new(8900,30769230)

p hoy.usdbtc
p hoy.copbtc

hoy.convert

p hoy.perform1(1,2)
