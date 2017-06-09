class CreateWeeklyResults < ActiveRecord::Migration[5.1]
  def change
    create_table :weekly_results do |t|
      t.date :drawing_date
      t.numeric :number1, precision: 0
      t.numeric :number2, precision: 0
      t.numeric :number3, precision: 0
      t.numeric :number4, precision: 0
      t.numeric :number5, precision: 0
      t.numeric :powerball, precision: 0

      t.timestamps
    end
  end
end
