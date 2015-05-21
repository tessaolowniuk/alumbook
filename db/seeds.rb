# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Login.create(User_name: 'user', Password: 'password', First_name: 'John',
  mi: 'K', Last_name: 'Stamos', Login_type: '2')
Login.create(User_name: 'user2', Password: 'password', First_name: 'Conan',
  mi: 'L', Last_name: 'OBrien', Login_type: '1')

User.create(User_name: 'user', Password: 'password', First_name: 'John',
    mi: 'K', Last_name: 'Stamos')
User.create(User_name: 'user2', Password: 'password', First_name: 'Conan',
    mi: 'L', Last_name: 'OBrien')

Company.create(company_name: 'NBC')
Company.create(company_name: 'North Central College')

SurveyQuestionOption.create(display_order: '1', text:
'this is a test question 1')
SurveyQuestionOption.create(display_order: '2', text:
'this is a test question 2')

Survey.create(survey_name: 'Survey 1', survey_description: 'survey test1',
status: '0')
Survey.create(survey_name: 'Survey 2', survey_description: 'survey test2',
status: '1')

UserSurvey.create(anonymous: 'false')
UserSurvey.create(anonymous: 'true')

SurveyQuestion.create(display_order: '1', question_type: '1', text: 'survey question test',
required: 'true')
SurveyQuestion.create(display_order: '2', question_type: '2', text: 'survey question test2',
required: 'true')

UserSurveyResponse.create(response_text: 'test1')
UserSurveyResponse.create(response_text: 'test2')

GivingBack.create(subject: 'Mentoring', position: 'Web Developer', description:
'Description test', requirements: 'CSC Degree', approved: 'true', completed: 'false',
giving_back_type: '1', contact_first_name: 'Guy', contact_last_name: 'Fieri', contact_email:'guy@hotmai.com')
GivingBack.create(subject: 'Internship', position: 'Head Chef', description:
'Description test2', requirements: 'Cooking', approved: 'true', completed: 'true',
 giving_back_type: '2', contact_first_name: 'Bobbi', contact_last_name: 'Flay', contact_email:'BF@hotmai.com')

CompanyInfo.create(street: '329 School St.', city: 'Naperville', state: 'IL',
zip: '60540', country_code: '300', area_code: '630', prefix: 'null', suffix: 'null')
CompanyInfo.create(street: '564 Kyley Ct.', city: 'Portland', state: 'OR',
zip: '60540', country_code: '300', area_code: '546', prefix: 'null', suffix: 'null')
