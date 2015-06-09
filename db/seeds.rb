<<<<<<< HEAD
#Created by Tessa Olowniuk


login1 = Login.create(username: 'jphoenix', password: 'jesse1234', email: 'jphoenix@gmail.com', first_name: 'Jesse', last_name: 'Phoenix', type: 0, middle_initial: 'W')

company_info1 = CompanyInfo.create(street: '30 N. Brainard', city: 'Naperville', state: 'IL', zip: '60540', country_code: '+1', area_code: '630', prefix: '554', suffix: '8080')
company1 = Company.create(company_name: 'North Central College', company_info_id: company_info1.id)

login2 = Login.create(username: 'amiller', password: 'password', email: 'amiller@hotmail.com', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, first_name: 'Adam', last_name: 'Miller', type: 2)
user2 = User.create(login_id: login2.id, city: 'Naperville', state: 'IL', zip: '60540', program: 'Computer Science', spouse_first_name: 'Laura', spouse_last_name: 'Miller', spouse_middle_initial: 'J', number_children: 1, ethnicity: 'hispanic', general_opt_in: 1, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 1, company_info_id: company_info1.id, job_title: 'Systems Analyst', birth_day: '1980-01-01', start_date: '2014-09-15', end_date: '2015-06-13', salary_range: 3, street: '610 N. Brainard St.')
user_phone2 = UserPhone.create(user_id: user2.id, country_code: '1', area_code: '260', prefix: '630', suffix: '1031', user_phone_type: 1)
college2 = College.create(college_name: 'North Central College')
degree2 = Degree.create(major_name: 'Computer Science', degree_type: 3)
undergraduate_degree2 = UndergraduateDegree.create(user_id: user2.id, college_id: college2.id, degree_id: degree2.id, graduation_date: '2012-12-21')

degree3 = Degree.create(major_name: 'Computer Science', degree_type: 5)
college3 = College.create(college_name: 'North Central College')
graduate_degree2 = GraduateDegree.create(user_id: user2.id, college_id: college3.id, degree_id: degree3.id, graduation_date: '2016-12-21', status: 1)

login3 = Login.create(username: 'ecarr', password: 'password', email: 'ecarr@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, first_name: 'George', last_name: 'Costanza', type: 2)
user3 = User.create(login_id: login3.id, city: 'Manhattan', state: 'NY', zip: '12345', program: 'Business Administration', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 0, phone_opt_in: 0, badges_opt_in: 1, status: 1, company_info_id: company_info1.id, job_title: 'Importer/Exporter', birth_day: '1968-02-02', start_date:'2014-09-15', salary_range: 2, street: '1100 South St.')
user_phone3 = UserPhone.create(user_id: user3.id, area_code: '110', prefix: '120', suffix: '1111', user_phone_type: 0)

login4 = Login.create(username: 'jdoe', password: 'password', first_name: 'John', last_name: 'Doe', email: 'jdoe342@gmail.com', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, type: 2)
user4 = User.create(login_id: login4.id, city: 'Oswego', state: 'IL', zip: '60543', program: 'Mathematics', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 0, birth_day: '1993-04-10', start_date:'2011-09-15', salary_range: 0, street: '9507 Grandville')
user_phone4 = UserPhone.create(user_id: user4.id, area_code: '815', prefix: '826', suffix: '2303', user_phone_type: 0)
user_phone41 = UserPhone.create(user_id: user4.id, area_code: '815', prefix: '260', suffix: '8756', user_phone_type: 1)

college6 = College.create(college_name: 'University of Chicago')
degree6 = Degree.create(major_name: 'Computer Science', degree_type: 3)
undergraduate_degree4 = UndergraduateDegree.create(user_id: user4.id, college_id: college6.id, degree_id: degree6.id, graduation_date: '2012-12-21')
degree7 = Degree.create(major_name: 'Computer Science', degree_type: 5)
college7 = College.create(college_name: 'North Central College')
graduate_degree5 = GraduateDegree.create(user_id: user4.id, college_id: college7.id, degree_id: degree7.id, graduation_date: '2014-6-21', status: 0)
degree8 = Degree.create(major_name: 'Mathematics', degree_type: 5)
graduate_degree5 = GraduateDegree.create(user_id: user4.id, college_id: college7.id, degree_id: degree8.id, graduation_date: '2017-6-21', status: 1)

login5 = Login.create(username: 'admin', password: 'password', first_name: 'Bill', last_name: 'Gates', email: 'bgates@hotmail.com', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, login_type: 0)

list1 = SavedList.create(login_id: login1.id, list_name: 'My First List', date_saved: '2015-05-28')
list_users1 = SavedListUser.create(saved_list_id: list1.id, user_id: user3.id)
list_users2 = SavedListUser.create(saved_list_id: list1.id, user_id: user2.id)
=======
# Created by Tessa
Login.destroy_all
Login.create!([
  {username: "wwworker", first_name: "worker", middle_initial: "w", last_name: "worker", type: 0, email: "worker@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "aaadmin", first_name: "admin", middle_initial: "a", last_name: "admin", type: 1, email: "admin@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {username: "uuuser", first_name: "user", middle_initial: "u", last_name: "user", type: 2, email: "user@mail.com", password: "password", password_confirmation: "password", encrypted_password: "$2a$10$ENH/39txtGu1bp9p8lNfu.NlVluvqfNG38Wa.jJa.l2MIM7vEG4sO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-25 19:34:44", last_sign_in_at: "2015-05-25 19:34:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Survey.destroy_all
Survey.create!([
  {login_id: nil, survey_name: "Test Survey_1", survey_description: "Test Survey_1", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_2", survey_description: "Test Survey_2", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_3", survey_description: "Test Survey_3", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_4", survey_description: "Test Survey_4", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_5", survey_description: "Test Survey_5", date_created: nil, status: nil},
  {login_id: nil, survey_name: "Test Survey_6", survey_description: "Test Survey_6", date_created: nil, status: nil},
])

User.destroy_all
User.create!([
  {login_id: 1, company_id: nil, street: "123 Front St", city: "Naperville", state: :IL, zip: 60504,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 0, birth_day: nil, birth_year: nil, ethnicity: nil, general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil},
  {login_id: 2, company_id: nil,  street: "345 Circle Dr", city: "Wheaton", state: :IL, zip: 60538,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 0, birth_day: nil, birth_year: nil, ethnicity: nil, general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil},
  {login_id: 3, company_id: nil,  street: "11212 Jefferson", city: "Sugar Grove", state: :IL, zip: 60554,  spouse_first_name: nil, spouse_middle_initial: nil, spouse_last_name: nil, number_children: nil, birth_month: 0, birth_day: nil, birth_year: nil, ethnicity: nil, general_opt_in: nil, email_opt_in: nil, phone_opt_in: nil, badges_opt_in: nil, status: nil, salary_range: nil, job_title: nil, start_date: nil, end_date: nil, searchable: nil, subscription_type: nil}
])
Company.destroy_all
Company.create!([
  { company_name: "Google" },
  { company_name: "Facebook" },
  { company_name: "Yahoo" }
])
GivingBack.destroy_all
GivingBack.create!([
  {user_id: 3, company_id: nil, subject: "Guest Speaker", position: "QA", description: "I'd like to be a guest speaker", requirements: nil, approved: false, completed: false, type: 2, contact_first_name: "John", contact_last_name: "Doe", contact_email: "johndoe@gmail.com", hidden: false},
  {user_id: 3, company_id: nil, subject: "Tutor", position: "Tutor", description: "I'd like to tutor", requirements: nil, approved: false, completed: false, type: 1, contact_first_name: "Michael", contact_last_name: "Fassbender", contact_email: "michaelfassbender@yahoo.com", hidden: false}
])
>>>>>>> c99fb3f70b3f4276bd453e075e357b5dbda28dde
