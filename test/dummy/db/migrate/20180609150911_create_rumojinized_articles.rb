class CreateRumojinizedArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :rumojinized_articles do |t|
      t.text :body

      t.timestamps
    end
  end
end
