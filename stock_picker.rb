def stock_picker(prices)
  best_days = []
  buy_day = 0
  best_profit = 0
  sell_day = prices.length - 1
  prices.length.times do |i|
    j = i
    while j < prices.length
      if prices[j] - prices[i] > best_profit
        best_profit = prices[j] - prices[i]
        buy_day = i
        sell_day = j
      end
      j += 1
    end
  end
  best_days = [buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
