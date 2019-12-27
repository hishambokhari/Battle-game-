require 'player'

describe Player do
    subject(:Hisham) { Player.new('Hisham') }
    subject(:Sayem)  { Player.new('Sayem') }

    describe '#name' do
        it 'returns the name' do
        expect(hisham.name).to eq 'Hisham'
        end
    end

    describe '#hit_points' do
        it 'returns the hit points' do
            expect(hisham.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
    end

    # describe '#attack' do
    #     it 'damages the player' do
    #     expect(sayem).to receive(:receive_damage)
    #     hisham.attack(sayem)
    #     end
    # end

    

    describe '#receive_damage' do
        it 'reduces the player hit points' do
        expect { hisham.receive_damage }.to change { hisham.hit_points }.by(-10)
        
        end
    end
end