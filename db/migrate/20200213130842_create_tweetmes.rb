class CreateTweetmes < ActiveRecord::Migration[5.2]
  def change
    create_table :tweetmes do |t|
      t.text :content

      t.timestamps
    end
  end
end
