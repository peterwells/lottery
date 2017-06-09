class UpdateResultsController < ApplicationController
  def index
    #open results file
    #iterate through
    #create new record if needed
    #close file
    @result_string = "hello world";
    result_arr = [];
    File.open(Rails.root.join('results').to_s + '/numbers.csv'){|file|  result_arr = file.readlines;}

    result_arr.each  do |s|
      @result_string += s;
    end

  end
end
