# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    #foreign key in one table refers to the primary key of another table
    #foreigns keys = course_id(courses), student_id(users)
    belongs_to :user,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User

    belongs_to :course,
        class_name: :Course,
        foreign_key: :course_id,
        primary_key: :id

end
