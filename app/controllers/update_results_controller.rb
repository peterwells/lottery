class UpdateResultsController < ApplicationController
  def index
    #open results file
    #iterate through
    #create new record if needed
    #close file
    @result_string = "hello world";
    resultStrArr = [];
    File.open(Rails.root.join('results').to_s + '/numbers.csv'){|file|  resultStrArr = file.readlines;}
    @ctr = 0;
    @resultArr = [];
    resultStrArr.each  do |s|
      result_row = s.split(',');
      newResult = WeeklyResult.new();
      newResult.drawing_date = Date.strptime(result_row[0], '%m/%d/%Y');
      newResult.number1 = result_row[1];
      newResult.number2 = result_row[2];
      newResult.number3 = result_row[3];
      newResult.number4 = result_row[4];
      newResult.number5 = result_row[5];
      newResult.powerball = result_row[6].split(':')[1];
      @resultArr.push(newResult);
      existing = WeeklyResult.where(drawing_date: newResult.drawing_date).first

      if existing.nil? then
        newResult.save!
        @ctr = @ctr + 1;
      end
    end

  end
end
