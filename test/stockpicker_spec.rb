require 'rspec'
require 'rspec/autorun'
require './lib/stockpicker'

describe StockPicker do

    before(:each) do
        @s = StockPicker.new
    end

    it 'picks the best stocks' do
        expect(@s.stock_picker([1,2,3,4,5])).to eq [1,5]
        expect(@s.stock_picker([1,2,3,4,5])).to eq [1,5]
    end


    it 'gets the lowest losses' do
        expect(@s.stock_picker([1,2,3,4,5].reverse)).to eq [1,2]
    end
end
