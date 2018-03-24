class AddAttachmentImageToBlogs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :blogs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :blogs, :image
  end
end
