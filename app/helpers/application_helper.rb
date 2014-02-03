module ApplicationHelper

  def cloudfront(url)
    s3_url = "s3.amazonaws.com/#{ENV['S3_BUCKET']}"
    cloudfront_url = "#{ENV['CLOUDFRONT_DOMAIN']}.cloudfront.net"
    url.gsub(s3_url, cloudfront_url)
  end
end
