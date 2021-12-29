require 'calculator'

describe Calculator, ",Sobre a" do
    
    #subject(:calc) { described_class.new() }

    context '#div' do
        it 'divide by 0' do
            #WITH WARNINGS
            expect{subject.div(2,0)}.to raise_exception
            #----------------#
            expect{subject.div(2,0)}.to raise_error(ZeroDivisionError)
            expect{subject.div(2,0)}.to raise_error("divided by 0")
            expect{subject.div(2,0)}.to raise_error(ZeroDivisionError,"divided by 0")
            expect{subject.div(2,0)}.to raise_error(/divided/)
        end
    end
    
    context '#sum' do
        it 'with positive numbers' do
            result = subject.sum(5,7)
            expect(result).to eq(12)
        end

        it 'with negative and positive numbers' do
            result = subject.sum(-5,7)
            expect(result).to eq(2)
        end

        it 'with negative numbers' do
            result = subject.sum(-5,-7)
            expect(result).to eq(-12)
        end
    end 
end