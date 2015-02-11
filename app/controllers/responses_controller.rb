class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :destroy]

  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
    # @answers = @response.answers
    # @questionnaire_name = @response.questionnaire.name
    # @user = @response.user
  end

  # GET /responses/new
  def new
    @response = Response.new

    # can probably change the following to some kind of count query
    @questionnaire = Questionnaire.find(params[:id])
    @questionnaire.questions.size.times { @response.answers.build }

    @questionnaire_name = @questionnaire.name
    @questions = @questionnaire.questions
  end

  # POST /responses
  # POST /responses.json
  def create
    @response = Response.new(response_params)
    @response.user = 'Anonymous' if @response.user.nil? or @response.user.empty?

    respond_to do |format|
      if @response.save
        format.html { redirect_to root_path, notice: 'Response was successfully created.' }
        format.json { render :show, status: :created, location: @response }
      else
        format.html { render :new }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    @response.destroy
    respond_to do |format|
      format.html { redirect_to responses_url, notice: 'Response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_response
    @response = Response.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def response_params
    params.require(:response).permit(:user, :questionnaire_id, answers_attributes: [:id, :content, :question_id])
  end

end
