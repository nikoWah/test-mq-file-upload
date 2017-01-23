class UploadedFilesController < ApplicationController
  def index
    @uploaded_files = UploadedFile.all
  end

  def new
    @uploaded_file = UploadedFile.new
  end

  def create
    @uploaded_file = UploadedFile.new(uploaded_file_params)

    if @uploaded_file.save
      @uploaded_file.update(name: @uploaded_file.attachment.identifier,
                            path: @uploaded_file.attachment.url)
      redirect_to uploaded_files_path, notice: "The file #{@uploaded_file.name} has been uploaded."
    else
      render 'new'
    end
  end

  def destroy
    @uploaded_file = UploadedFile.find(params[:id])
    @uploaded_file.destroy

    redirect_to uploaded_files_path, notice: "The file #{@uploaded_file.name} has been deleted."
  end

  private

  def uploaded_file_params
    params.require(:uploaded_file).permit(:attachment)
  end

end
