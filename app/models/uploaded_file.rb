class UploadedFile < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
end
