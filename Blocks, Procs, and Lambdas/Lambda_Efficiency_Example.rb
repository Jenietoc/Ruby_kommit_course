def convert_to_euros(dollars)
    if dollars.is_a?(Numeric)
        dollars * 0.95
    end
end

def convert_to_pesos(dollars)
    if dollars.is_a?(Numeric)
        dollars * 20.67
    end
end


def convert_to_rupees(dollars)
    if dollars.is_a?(Numeric)
        dollars * 68.13
    end
end

to_euros = lambda { |dollars| dollars * 0.95 }
to_pesos = lambda { |dollars| dollars * 20.70 }
to_rupees = lambda { |dollars| dollars * 68.13 }

def convert(dollars, currency_lambda)
    currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)

p [1000, 2000, 3000].map(&to_rupees)
