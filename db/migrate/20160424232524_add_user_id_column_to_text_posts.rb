class AddUserIdColumnToTextPosts < ActiveRecord::Migration
  def change
      change_table :text_posts do |t|
      t.integer :user_id, :index => true
  end
  end
end