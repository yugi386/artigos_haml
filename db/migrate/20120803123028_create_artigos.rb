class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.date :data
      t.text :texto

      t.timestamps
    end
  end
end
