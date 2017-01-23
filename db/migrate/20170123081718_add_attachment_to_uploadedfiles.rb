class AddAttachmentToUploadedfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :uploaded_files, :attachment, :string
  end
end
