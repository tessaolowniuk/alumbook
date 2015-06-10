#Survey_Controller created by Jeffrey Mayer, edited by Maxwell Barvian
#Everything related to Survey was created by Jeffrey Mayer
#This is not fully complete. Need to implement javascreipt to allow
#for only showing one question at a time and proper form submission.
class SurveysController < AuthenticatedController
  def index
    @surveys = Survey.all
  end

  # Take a survey. creates base survey and loads in partial for each question
  def edit
    @survey = Survey.find(params[:id])

    unless @survey && @survey.status == 'published'
      flash[:alert] = "Survey not found."
      redirect_to action: 'index'
    end
  end

  def update
    @survey = Survey.find(params[:id])

    if @survey.update(survey_params)
      flash[:success] = "Survey completed."
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  private

  def survey_params
    params.require(:survey).permit(
      user_surveys_attributes: [:id, :user_id,
        user_survey_responses_attributes: [:id,
          :survey_question_id,
          :survey_question_option_id,
          :response_text
        ]
      ]
    )
  end
end
