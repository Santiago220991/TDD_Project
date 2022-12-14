require './solver'

describe Solver do
  context 'Solver factorial method' do
    it('solver class objects should be an instance of Solver') do
      solver = Solver.new
      expect(solver).to be_instance_of(Solver)
    end

    it('solver class objects should have a method factorial') do
      solver = Solver.new
      expect(solver).to respond_to(:factorial)
    end

    it('Factorial(5) method should return 120') do
      solver = Solver.new
      expect(solver.factorial(5)).to be(120)
    end

    it('Factorial(8) method should return 40320 ') do
      solver = Solver.new
      expect(solver.factorial(8)).to be(40_320)
    end

    it('Factorial(0) method should return 1') do
      solver = Solver.new
      expect(solver.factorial(0)).to be(1)
    end

    it('Factorial(1) method should return 1') do
      solver = Solver.new
      expect(solver.factorial(0)).to be(1)
    end

    it 'Factorial of negative numbers should raise an error' do
      solver = Solver.new
      number = rand(1..100) * -1
      expect { solver.factorial(number) }.to raise_error('Number should be positive')
    end
  end
  context 'the solver class should have functionality to reverse an string' do
    it 'solver class objects should have a method reverse' do
      solver = Solver.new
      expect(solver).to respond_to(:reverse)
    end

    it 'should receive a string and return the reversed string' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq 'olleh'
    end

    it 'should return an empty string if an empty string is passed' do
      solver = Solver.new
      expect(solver.reverse('')).to eq ''
    end
  end

  context 'Solver fizzbuzz method' do
    it('solver class objects should be an instance of Solver') do
      solver = Solver.new
      expect(solver).to be_instance_of(Solver)
    end

    it('solver class objects should have a method fizzbuzz') do
      solver = Solver.new
      expect(solver).to respond_to(:fizzbuzz)
    end

    it 'When n is divisible by 3, return "fizz"' do
      solver = Solver.new
      n = 18
      expect(solver.fizzbuzz(n)).to eq('fizz')
    end

    it 'When n is divisible by 5, return "buzz"' do
      solver = Solver.new
      n = 10
      expect(solver.fizzbuzz(n)).to eq('buzz')
    end

    it 'When n is not divisible by 3 and 5, return N as string' do
      solver = Solver.new
      n = 7
      expect(solver.fizzbuzz(n)).to eq('7')
    end

    it 'When n is divisible by 3 and 5, return "fizzbuzz"' do
      solver = Solver.new
      n = 15
      expect(solver.fizzbuzz(n)).to eq('fizzbuzz')
    end
  end
end
