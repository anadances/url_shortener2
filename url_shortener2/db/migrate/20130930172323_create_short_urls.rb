class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.string :long_url
      t.string :short_url

      t.timestamps
    end
  end
end
