#Survey_Controller created by Jeffrey Mayer, edited by Maxwell Barvian
#Everything related to Survey was created by Jeffrey Mayer
#This is not fully complete. Need to implement javascreipt to allow
#for only showing one question at a time and proper form submission.
class SurveysController < AuthenticatedController
  def index
    @surveys = Survey.all
  end

  # Take a survey. creates base survey and loads in partial for each question
  def show
    @survey = Survey.find(params[:id])
    @usersurvey = @survey.user_surveys.build

    unless @survey && @survey.status == 'published'
      flash[:alert] = "Survey not found."
      redirect_to action: 'index'
    end
  end

  def create
    @usersurvey = UserSurvey.new(user_survey_params)
    @usersurvey.user = current_login.user
    @usersurvey.date_completed = Date.today

    if @usersurvey.save
      flash[:success] = "Survey completed."
      redirect_to action: 'index'
    else
      render 'show'
    end
  end

  private

  def user_survey_params
    params.require(:user_survey).permit(
      :survey_id, :user_id,
      user_survey_responses_attributes: [:id,
        :survey_question_id,
        :survey_question_option_id,
        :response_text
      ]
    )
  end
end
