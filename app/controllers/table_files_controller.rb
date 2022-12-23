class TableFilesController < ApplicationController
  before_action :set_table_file, only: %i[ show edit update destroy ]

  # GET /table_files or /table_files.json
  def index
    @table_files = TableFile.all
  end

  # GET /table_files/1 or /table_files/1.json
  def show
  end

  # GET /table_files/new
  def new
    @table_file = TableFile.new
  end

  # GET /table_files/1/edit
  def edit
  end

  # POST /table_files or /table_files.json
  def create
    @table_file = TableFile.new(table_file_params)

    respond_to do |format|
      if @table_file.save
        format.html { redirect_to table_file_url(@table_file), notice: "Table file was successfully created." }
        format.json { render :show, status: :created, location: @table_file }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @table_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_files/1 or /table_files/1.json
  def update
    respond_to do |format|
      if @table_file.update(table_file_params)
        format.html { redirect_to table_file_url(@table_file), notice: "Table file was successfully updated." }
        format.json { render :show, status: :ok, location: @table_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_files/1 or /table_files/1.json
  def destroy
    @table_file.destroy

    respond_to do |format|
      format.html { redirect_to table_files_url, notice: "Table file was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_file
      @table_file = TableFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_file_params
      params.require(:table_file).permit(:name)
    end
end
