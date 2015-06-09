#SurveyAdminController Created by Jeffrey Mayer
#Everything related to Survey_Admin was created by Jeffrey Mayer with the
#Exception of the .js file that Brett did the googling for to find that
class SurveyAdminController < AuthenticatedController
  #list of all surveys, ability to add new survey, publish survey
  def index
    @survey = Survey.all rescue nil
  end
  def add

  end
  #new question page
  def new_q
    @survey = Survey.find(params[:id]) rescue nil
    @count = :display_order

  end
  #add choices for all but short answer
  def choices

    @question = SurveyQuestion.find(params[:id])
    @options = SurveyQuestionOption.where(survey_question_id: params[:id]) rescue nil
  end
  #sub questions for multi_question
  def sub_questions
    @question = SurveyQuestion.find(params[:id])
    @sub = SurveyQuestionOptionsChoice.where(survey_question_id: params[:id]) rescue nil
  end


  def new
  end
  #Edit survey page to add questions
  def edit
      @survey = Survey.find(params[:id]) rescue nil
      @question = SurveyQuestion.where(survey_id: params[:id]) rescue nil



    end

    #publish survey for users to view/take
    def publish
  survey = Survey.find(params[:id]) rescue nil
  survey.update_attributes(status: 'published')
  redirect_to(survey_admin_index_path)

end


#create methods for form submissions in each view
  def create
    # render plain: params[:survey].inspect

    @survey = Survey.new(survey_params) rescue nil
    @survey.save rescue nil
    if !@survey.nil?
    redirect_to action: 'index'
  end

    @question = SurveyQuestion.new(question_params) rescue nil
    @question.save rescue nil
    if !@question.nil?
    redirect_to action: 'edit', id: @question.survey_id
  end


    @option = SurveyQuestionOption.new(option_params) rescue nil
    @option.save rescue nil
    if !@option.nil?
    redirect_to action: 'choices', id: @option.survey_question_id
  end

  @sub = SurveyQuestionOptionsChoice.new(sub_params) rescue nil
  @sub.save rescue nil
  if !@sub.nil?
  redirect_to action: 'sub_questions', id: @sub.survey_question_id
end

    end

  private
  #Parameter definition for new database entries
  def survey_params
    params.require(:survey).permit(:survey_name, :login_id,
    :survey_description , :status, :date_created, :status,
    :created_at, :updated_at)

  end

  def question_params
    params.require(:survey_question).permit(:survey_id, :type,
    :display_order, :text, :required)
  end
  def option_params
    params.require(:survey_question_option).permit(:survey_question_id, :display_order, :text)
  end
  def sub_params
    params.require(:survey_question_options_choices).permit(:survey_question_id, :display_order, :text)
  end







end
