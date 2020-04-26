class StockPicker

    def init
        @bestPriceDiff = nil
        @daysForPriceDiff = []
    end

    def stock_picker input_array

        input_array.each do |day1|
            daysAfter = input_array[1..-1]
            daysAfter.each do |day2|
                if @bestPriceDiff == nil
                    #Need to get the days from the array before calling this e.g. the element number
                    assign_values(day1, day2)
                elsif day2 - day1 > @bestPriceDiff
                    assign_values(day1, day2)
                else
                end
            end
        end
        return @daysForPriceDiff
    end

    def assign_values day1, day2
        @bestPriceDiff = day2 - day1
        @daysForPriceDiff = [day1, day2]
    end

end