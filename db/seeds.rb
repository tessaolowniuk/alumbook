# Created by Tessa
Login.destroy_all
Login.create!([
  {username: "jphoenix", first_name: "Jesse", middle_initial: "w", last_name: "Phoenix", type: 0, email: "jphoenix@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "jdoe", first_name: "John", middle_initial: "a", last_name: "Doe", type: 1, email: "jdoe@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "ecarr", first_name: "Ella", middle_initial: "u", last_name: "Carr", type: 2, email: "ellacarr16@hotmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "amiller", first_name: "Adam", middle_initial: "u", last_name: "Miller", type: 2, email: "adamumiller164@gmail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
User.destroy_all
User.create!([
  {login_id: 33, company_id: nil, street: "123 Front St", city: "Naperville", state: "IL", zip: 60504,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 5, birth_day: 17, birth_year: 1992, ethnicity: "N/A", general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil},
  {login_id: 34, company_id: nil,  street: "345 Circle Dr", city: "Wheaton", state: "IL", zip: 60538,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 11, birth_day: 24, birth_year: 1987, ethnicity: "Hispanic", general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil},
  {login_id: 35, company_id: nil,  street: "11212 Jefferson", city: "Sugar Grove", state: "IL", zip: 60554,  spouse_first_name: "Taylor", spouse_middle_initial: "M", spouse_last_name: "Clarkson", number_children: 2, birth_month: 3, birth_day: 13, birth_year: 1977, ethnicity: "Caucasian", general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil},
  {login_id: 36, company_id: nil,  street: "317 Ogden Ave", city: "Oswego", state: "IL", zip: 60543,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 4, birth_day: 16, birth_year: 1990, ethnicity: "Caucasian", general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil}
])
GivingBack.destroy_all
GivingBack.create!([
  {user_id: 15, company_id: 3, subject: "Guest Speaker", position: "QA", description: "I'd like to give a guest presentation to the Computer Science department", requirements: nil, approved: nil, completed: nil, type: 2, contact_first_name: "Sue", contact_last_name: "King", contact_email: "sueking@hotmail.com"},
  {user_id: 16, company_id: 2, subject: "Tutor", position: "Tutor", description: "Computer Science tutor", requirements: nil, approved: nil, completed: nil, type: 3, contact_first_name: "Jake", contact_last_name: "Smith", contact_email: "jstutor@gmail.com"},
  {user_id: 17, company_id: 3, subject: "Mentor", position: "Mentor", description: "Willing to mentor students in the Math department.", requirements: nil, approved: nil, completed: nil, type: 1, contact_first_name: "Carl", contact_last_name: "Dyer", contact_email: "carlthementor@gmail.com"},
  {user_id: 18, company_id: 2, subject: "Internship", position: "Jr. Java Developer", description: "Entry level position for students with a degree in CS", requirements: "Undergrad in Computer Science", approved: nil, completed: nil, type: 0, contact_first_name: "Laura", contact_last_name: "Fisher", contact_email: "lfish@gmail.com"}
])
SavedList.destroy_all
SavedList.create!([
  {login_id: 1, list_name: "List of Students", date_saved: "05/22/2015"},
  {login_id: 1, list_name: "Student Query", date_saved: "04/13/2015"},
  {login_id: 2, list_name: "Students", date_saved: "06/02/2015"},
  {login_id: 1, list_name: "Alumni", date_saved: "06/02/2015"}
])
SavedListUser.destroy_all
SavedListUser.create!([
  {lists_id: 1, user_id: 1},
  {lists_id: 2, user_id: 1},
  {lists_id: 3, user_id: 2},
  {lists_id: 4, user_id: 1}
])
UserPhone.destroy_all
UserPhone.create!([
{user_id: 1, country_code: 1, area_code: 630, prefix: nil, suffix: nil, extension: 4848, type: 1},
{user_id: 3, country_code: 1, area_code: 630, prefix: nil, suffix: nil, extension: nil, type: 0},
{user_id: 4, country_code: 1, area_code: 815, prefix: nil, suffix: nil, extension: nil, type: 2}
])
Degree.destroy_all
Degree.create!([
  {major_name: "Liberal Studies", type: 4},
  {major_name: "Business Administration", type: 4},
  {major_name: "Education", type: 4},
  {major_name: "Management Information Systems", type: 5},
  {major_name: "Web and Internet Applications", type: 5}
])
College.destroy_all
College.create!([
  {college_name: "North Central College"},
  {college_name: "Northwestern University"},
  {college_name: "University of Chicago"},
  {college_name: "Benedictine University"}
])
UndergraduateDegree.destroy_all
UndergraduateDegree.create!([
  {user_id: 1, college_id: 1, degree_id: 2, graduation_date: nil},
  {user_id: 2, college_id: 1, degree_id: 2, graduation_date: nil},
  {user_id: 3, college_id: 4, degree_id: 5, graduation_date: nil},
  {user_id: 4, college_id: 2, degree_id: 4, graduation_date: nil}
])
GraduateDegree.destroy_all
GraduateDegree.create!([
  {user_id: 1, college_id: 1, degree_id: 2, graduation_date: 06/14/2011, status: 0},
  {user_id: 2, college_id: 1, degree_id: 2, graduation_date: 06/14/2008, status: 0},
  {user_id: 3, college_id: 1, degree_id: 4, graduation_date: 06/12/2016, status: 1},
  {user_id: 4, college_id: 3, degree_id: 5, graduation_date: 06/12/2017, status: 1}
])
Company.destroy_all
Company.create!([
  {company_name: "North Central College"},
  {company_name: "Facebook"},
  {company_name: "Kraft"},
  {company_name: "Radio Flyer"}
])
CompanyInfo.destroy_all
CompanyInfo.create!([
  {company_id: 1, street: "30 N. Brainard", city: "Naperville", state: "IL", zip: "60540", country_code: 1, area_code: 630, prefix: nil, suffix: nil},
  {company_id: 2, street: "1 Hacker Way", city: "Menlo Park", state: "CA", zip: "94025", country_code: 1, area_code: 902, prefix: nil, suffix: nil},
  {company_id: 3, street: "545 Ogden Avenue", city: "Naperville", state: "IL", zip: "60540", country_code: 1, area_code: 630, prefix: nil, suffix: nil},
  {company_id: 4, street: "6515 West Grand Avenue", city: "Chicago", state: "IL", zip: "60707", country_code: 1, area_code: 654, prefix: nil, suffix: nil}
])
Survey.destroy_all
Survey.create!([
  {login_id: 1, survey_name: "Graduating Class", survey_description: "Survey given to the graduating class of 2015", date_created: nil, status: nil},
  {login_id: 3, survey_name: "Alumni", survey_description: "Survey given to alumni, regarding their experience at North Central College", date_created: nil, status: nil},
  {login_id: 4, survey_name: "Currently Enrolled", survey_description: "Student's that are currently enrolled in a program.", date_created: 05/07/2015, status: nil},
])
SurveyQuestion.destroy_all
SurveyQuestion.create!([
  {survey_id: nil, type: nil, display_order: nil, text: nil, required: nil}
])
SurveyQuestionOption.destroy_all
SurveyQuestionOption.create!([
  {survey_question_id: nil, display_order: nil, text: nil}
])
SurveyQuestionOptionChoice.destroy_all
SurveyQuestionOptionChoice.create!([
  {survey_question_id: nil, display_order: nil, text: nil}
])
UserSurvey.destroy_all
UserSurvey.create!([
  {user_id: nil, survey_id: nil, date_completed: nil, anonymous: nil}
])
UserSurveyResponse.destroy_all
UserSurveyResponse.create!([
  {user_survey_id: nil, survey_question_id: nil, survey_question_option_id: nil, user_survey_option_choices_id: nil, response_text: nil}
])
