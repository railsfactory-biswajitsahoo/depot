class UploadController < ApplicationController
def index
     render :file => 'app\views\upload\upload.html.erb'
  end
  def uploadFile
    post = Upload.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end

end
