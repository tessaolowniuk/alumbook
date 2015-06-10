#Survey_Controller created by Jeffrey Mayer
#Everything related to Survey was created by Jeffrey Mayer
#This is not fully complete. Need to implement javascreipt to allow
#for only showing one question at a time and proper form submission.
class SurveyController < AuthenticatedController
  def index
    @survey = Survey.all
  end
#take a survey. creates base survey and loads in partial for each question
  def take
  @survey = Survey.find(params[:id])

  @question = SurveyQuestion.where(survey_id: params[:survey_id]) rescue nil

  end
def add
end

  def create
    # render plain: params[:survey].inspect
    #@survey = UserSurvey.new(survey_params)
    #@survey.save

    #@survey.user_survey_response = UserSurveyResponse.new(option_params)
    #@survey.user_survey_response.update_attributes(user_survey_id: @survey)
    #@survey.survey_user_response.save
    redirect_to survey_index_path
  end

private

def survey_params
  params.require(:user_survey).permit(:user_id, :survey_id, :date_completed, :anonymous, :created_at, :updated_at)
end


  def option_params
    params.require(:user_survey_response).permit(:user_survey_id, :survey_question_id, :survey_question_option_id,
    :survey_question_options_choice_id, :response_text, :created_at, :updated_at)
  end








end
