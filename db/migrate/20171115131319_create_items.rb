class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :code
      t.srting :name
      t.string :url
      t.string :image_url

      t.timestamps
    end
  end
end
