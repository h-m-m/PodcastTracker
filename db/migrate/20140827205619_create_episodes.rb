class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.string :payload_url
      t.datetime :posted_at
      t.boolean :interesting
      t.boolean :unlistened

      t.timestamps
    end
  end
end
