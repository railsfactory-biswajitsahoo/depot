class Upload < ActiveRecord::Base
 def self.save(upload)
    name =  upload['upload'].original_filename
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['upload'].read) }
  end

end
