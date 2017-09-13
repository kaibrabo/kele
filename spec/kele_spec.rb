require 'spec_helper'

describe Kele, type: :request do
    context '.kele' do

        describe '#initialize' do
            it 'authenticates user', vcr: {cassette_name: :initialize} do
                kele = Kele.new(ENV['EMAIL'], ENV['PASSWORD'])
                expect(kele.instance_variable_get(:@auth_token)).to be_a String
            end
        end
    end
end
