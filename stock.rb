def stock_picker(array)
  profits = Array.new(array.length) { Array.new()}
  bestdays = []
  array.each_with_index do |price,day|
    for day in 0..array.length
      if day <= array.index(price)
      profits[day].push(price - array[day])
      end
    end
  end  
    profits.each_with_index do |everyday, buyday|
      everyday.each_with_index do |profit, profitday|
        if profits.flatten.max <= 0
          bestdays.push("DO NOT OPERATE").uniq!
        elsif profit == profits.flatten.max
          bestdays.push(buyday,profitday + buyday)
        end
      end
    end    
  p bestdays   
end

stock_picker([17,3,6,9,15,8,6,1,10])

## agarrar dia 0 y comparar profit con los siguientes dias
## agarrar siguiente dia y hacer lo mismo
## devolver la pareja de dias con mas profit

## hacer algo como iterar desde array[index + 1..array.lastindex]