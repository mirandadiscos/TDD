describe 'Matchers verdadeiro/falso' do
    it 'be_odd' do
       expect(1).to be_odd
    end

    it 'be_even' do
        expect(1).not_to be_even
        expect(2).to be_even
    end
end