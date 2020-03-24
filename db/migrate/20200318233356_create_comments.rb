class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments, id: :uuid do |t|
      t.belongs_to :post, null: false, type: :uuid, foreign_key: true, index: true
      t.text :body

      t.timestamps
    end
  end
end
