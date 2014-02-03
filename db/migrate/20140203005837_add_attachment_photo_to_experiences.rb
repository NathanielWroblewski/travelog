class AddAttachmentPhotoToExperiences < ActiveRecord::Migration
  def self.up
    change_table :experiences do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :experiences, :photo
  end
end
