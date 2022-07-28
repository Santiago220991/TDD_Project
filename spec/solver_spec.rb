require './solver'

describe 'Solver factorial method' do
    it ("solver class objects should be an instance of Solver")do
    solver=Solver.new
    expect(solver).to be_instance_of(Solver)
    end

    it ("solver class objects should have a method factorial")do
    solver=Solver.new
    expect(solver).to respond_to(:factorial)
    end

    it ("Factorial(5) method should return 120")do
    solver=Solver.new
    expect(solver.factorial(5)).to be(120)
    end

    it ("Factorial(0) method should return 1")do
    solver=Solver.new
    expect(solver.factorial(0)).to be(1)
    end

    it ("Factorial(1) method should return 1")do
    solver=Solver.new
    expect(solver.factorial(0)).to be(1)
    end

    it "Factorial of negative numbers should raise an error" do
    solver=Solver.new
    number=rand(1..100)*-1
    expect{solver.factorial(number)}.to raise_error("Number should be positive") 
    end

end