class Solver
    def factorial(num)
        if(num>=0)
            return 1 if num==0
        num*factorial(num-1)
        else
        raise "Number should be positive"
        end
    end

    def reverse(string)
        string.reverse
    end
end