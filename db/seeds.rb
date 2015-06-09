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
