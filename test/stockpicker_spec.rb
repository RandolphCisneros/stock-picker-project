require 'rspec'
require 'rspec/autorun'
require './lib/stockpicker'

describe StockPicker do

    before(:each) do
        @s = StockPicker.new
    end

    it 'does anything' do
        expect(@s).to eq @s
    end
end
