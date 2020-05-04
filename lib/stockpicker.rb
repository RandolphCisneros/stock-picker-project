class StockPicker

    def init
        @bestPriceDiff = nil
        @daysForPriceDiff = []
    end

    def stock_picker input_array
        #puts input_array
        input_array.each do |day1|
            #puts input_array.index(day1)
            daysAfter = input_array[input_array.index(day1) + 1..-1]
            daysAfter.each do |day2|
                #puts input_array.index(day2)
                if @bestPriceDiff == nil
                    assign_values(day1, day2, input_array)

                    puts @bestPriceDiff
                elsif day2 - day1 > @bestPriceDiff
                    #puts(input_array.index(day1).to_s + " " + input_array.index(day2).to_s)
                    assign_values(day1, day2, input_array)
                    puts @bestPriceDiff
                else
                end
            end
        end
        return @daysForPriceDiff
    end

    def assign_values day1, day2, input_array
        @bestPriceDiff = day2 - day1
        @daysForPriceDiff = [input_array.index(day1), input_array.index(day2)]
    end

end