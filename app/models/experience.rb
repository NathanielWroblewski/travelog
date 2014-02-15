class Experience < ActiveRecord::Base

  belongs_to :state

  has_attached_file :photo,
                    styles: { large: '970x' },
                    storage: :s3,
                    s3_credentials: Proc.new{|a| a.instance.s3_credentials },
                    convert_options: { all: '-auto-orient' }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  def s3_credentials
    { bucket: ENV['S3_BUCKET'],
      access_key_id: ENV['S3_ACCESS_KEY'],
      secret_access_key: ENV['S3_SECRET_ACCESS_KEY']
    }
  end
end
