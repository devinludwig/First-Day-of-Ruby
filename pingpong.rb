class Fixnum
  define_method(:ping_pong) do
  range = (1..self)
  output = [0]
    range.each() do |number|
      if (number%15).==(0)
        output.push("ping-pong")
      elsif (number%5).==(0)
        output.push("pong")
      elsif (number%3).==(0)
        output.push("ping")
      else
        output.push(number)
      end
    end
    output
  end
end
