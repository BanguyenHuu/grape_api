class CreateHocSinhs < ActiveRecord::Migration[5.2]
  def change
    create_table :hoc_sinhs do |t|
      t.string :name

      t.timestamps
    end
  end
end
