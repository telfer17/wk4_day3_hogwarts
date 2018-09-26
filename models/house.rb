require_relative('../db/sql_runner')

class House
  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO houses (name) values ($1) RETURNING id"
    values = [@name]

    house = SqlRunner.run(sql, values).first
    @id = house["id"].to_i
  end

  def self.find_all()
    sql = "SELECT * FROM houses"
    houses_hash = SqlRunner.run(sql)
    return houses = houses_hash.map{|house| House.new(house)}

  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house_hash = SqlRunner.run(sql, values)
    return house = House.new(house_hash.first)
  end

  def self.delete_all
    sql = "DELETE FROM houses"

    SqlRunner.run(sql)
  end
end
