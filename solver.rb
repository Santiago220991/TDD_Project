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

    def fizzbuzz(n)
        if n%3 == 0 && n%5 == 0 
            return 'fizzbuzz'
        elsif n%3 == 0
            return 'fizz'
        elsif n%5 == 0
            return 'buzz'
        else 
            n.to_s
        end
    end
end