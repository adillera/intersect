class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :keyword
      t.references :issue, foreign_key: true

      t.timestamps
    end
  end
end
