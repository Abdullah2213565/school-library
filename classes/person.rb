require 'securerandom'

# This is person class
class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name, parent_permission: true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end