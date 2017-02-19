def stock_picker(prices)
  best_days = []
  best_profit = 0
  prices.length.times do |i|
    j = i
    for j in i...prices.length
      if prices[j] - prices[i] > best_profit
        best_profit = prices[j] - prices[i]
        best_days[0] = i
        best_days[1] = j
      end
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
