class CreateInvestmentRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :investment_recommendations do |t|
      t.boolean :private
      t.references :user, null: false, foreign_key: true
      t.string :tkrsymbol
      t.text :body

      t.timestamps
    end
  end
end
