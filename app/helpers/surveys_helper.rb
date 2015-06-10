module SurveysHelper
  def build_responses(usersurvey)
    if usersurvey.user_survey_responses.empty?
      usersurvey.survey.survey_questions.each do |q|
        response = UserSurveyResponse.new({ survey_question: q })
        usersurvey.user_survey_responses << response
      end
    end
    usersurvey
  end
end
