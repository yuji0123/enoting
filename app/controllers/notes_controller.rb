class NotesController < ApplicationController
  before_action :set_note, only: [:share, :show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /notes
  # GET /notes.json
  def index
    # @notes = Note.order("updated_at DESC")
    # @notes = Note.all.reverse_order
    # @notes = Note.all
    @notes = Note.where( 'user_id' => current_user.id ).reverse_order

    @shared_notes = User.find(current_user.id).notes
  end


  # GET /notes/1
  # GET /notes/1.json
  def show
    gon.text_list = @note.contents
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  def share
    @friends = User.find(current_user.id).friends
  end

  def share_update
    params[:user_id].each do |shared_user_id|
      # if Share.where(note_id: params[:note_id]).where(user_id: shared_user_id) == nil
       Share.create(:note_id => params[:note_id], :user_id => shared_user_id)
      # end
    end 
    @note = Note.find(params[:id])
    @friends = User.find(current_user.id).friends
    render "share"
  end

  def search
    # @notes = Note.scoped
    @notes = Note.where(['name LIKE ? or contents LIKE ?', 
      "%#{params[:search]}%","%#{params[:search]}%"]).reverse_order if
      params[:search].present?
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:name, :contents)
    end
end
