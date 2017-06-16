class WeeklyResult < ApplicationRecord
  def to_s
    return self.number1.to_s + ' ' + self.number2.to_s + ' ' + self.number3.to_s + ' ' + self.number4.to_s + ' ' + self.number5.to_s + ' ' + self.powerball.to_s;
  end
end
