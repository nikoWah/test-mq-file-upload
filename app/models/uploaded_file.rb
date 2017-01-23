class UploadedFile < ActiveRecord::Base
  mount_uploader :path, AttachmentUploader
end
