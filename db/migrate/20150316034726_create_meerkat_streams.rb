class CreateMeerkatStreams < ActiveRecord::Migration
  def change
    create_table :meerkat_streams do |t|
      t.string :link

      t.timestamps null: false
    end
  end
end
