class CreateWeeklyResults < ActiveRecord::Migration[5.1]
  def change
    create_table :weekly_results do |t|
      t.date :drawing_date
      t.numeric :number1
      t.numeric :number2
      t.numeric :number3
      t.numeric :number4
      t.numeric :number5
      t.numeric :powerball

      t.timestamps
    end
  end
end
