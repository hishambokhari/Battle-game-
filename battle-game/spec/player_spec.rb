require 'player'

describe Player do
    subject(:Hisham) { Player.new('Hisham')}

    describe '#name' do
        it 'returns the name' do
        expect(hisham.name).to eq 'Hisham'
        end
    end
end