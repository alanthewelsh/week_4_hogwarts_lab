require_relative('../db/sql_runner')

class Student

  attr_accessor :first_name, :last_name, :house, :age

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end

  def save
    sql = "INSERT INTO students (first_name, last_name, age, house_id) VALUES ( '#{@first_name}', '#{@last_name}', '#{@age}', '#{@house_id}' ) RETURNING *;"
    student_data = SQLRunner.run(sql)
    @id = student_data.first()['id'].to_i
  end

  def houses
  end

  def self.delete_all
    sql = "DELETE FROM students;"
    SQLRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM students;"
    everyone = SQLRunner.run(sql)
    result = everyone.map { |student| Student.new(student) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    student = SQLRunner.run(sql)
    result = Student.new(student.first)
    return result
  end

  def student_details
    return "#{@first_name}, #{@last_name}, #{@house}, #{@age}"
  end

end