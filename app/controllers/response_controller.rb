class ResponseController < ApplicationController


  private 
    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:response).permit(:user, answers_attributes: [:id, :content])
    end

end
