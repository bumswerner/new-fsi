module ImagesHelper
  
  def create_path path
    # post = path.byteslice(24, path.length)
    # pre = "https://s3-eu-west-1.amazonaws.com" 
    # pre + "/" + post
    path
  end
  
end
