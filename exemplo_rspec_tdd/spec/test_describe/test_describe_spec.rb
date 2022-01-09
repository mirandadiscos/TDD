describe "Victor" do
    it 'String' do
        expect(subject.size).to eq(6)
    end

    it 'Array' do
        expect(subject).not_to be_kind_of(Array)
    end
end