def stock_picker(arr)
  my_hash = { low_price: 0, high_price: 0, profit: 0 }

  arr.each do |low_price|
    arr.each do |high_price|
      if (high_price - low_price) > my_hash[:profit] &&
           arr.index(high_price) > arr.index(low_price)
        my_hash[:low_price] = low_price
        my_hash[:high_price] = high_price
        my_hash[:profit] = high_price - low_price
      end
    end
  end

  buy_day = arr.index(my_hash[:low_price])
  sell_day = arr.index(my_hash[:high_price])

  [buy_day, sell_day]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1,4]
