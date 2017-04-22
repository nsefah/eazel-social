class CreateTpusers < ActiveRecord::Migration[5.0]
  def change
    create_table :tpusers do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps
    end
  end
end
