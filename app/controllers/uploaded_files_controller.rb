class UploadedFilesController < ApplicationController
  def index
    @uploaded_files = UploadedFile.all
  end

  def new

  end

  def create
    @uploaded_file = UploadedFile.new(uploaded_file_params)

    if @uploaded_file.save
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
    params.require(:uploaded_file).permit(:name, :file_path)
  end

end
