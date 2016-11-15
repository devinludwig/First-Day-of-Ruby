class Fixnum
  define_method(:clock_angle) do
    hours = (self/100).floor()
    minutes = self.to_s().split('').pop(2).join().to_i()
    angle_one = minutes.*(6) - hours.*(30)
    angle_two = 360 - hours.*(30) + minutes.*(6)
    if (angle_two.<=180).&(angle_two.>=0)
      angle_two
    else
      angle_one.abs()
    end
  end
end
