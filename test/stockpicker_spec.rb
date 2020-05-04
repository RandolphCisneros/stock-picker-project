require 'rspec'
require 'rspec/autorun'
require './lib/stockpicker'

describe StockPicker do

    before(:each) do
        @s = StockPicker.new
    end

    it 'picks the best stocks' do
        expect(@s.stock_picker([1,2,3,4,5])).to eq [0,4]
        expect(@s.stock_picker([17,3,6,9,15,8,6,1,10])).to eq [1,4]
    end


    it 'gets the lowest losses' do
        expect(@s.stock_picker([1,2,3,4,5].reverse)).to eq [0,1]
    end
end
