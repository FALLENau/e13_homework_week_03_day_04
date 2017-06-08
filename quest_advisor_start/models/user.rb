require_relative("../db/sql_runner")

class User

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO users (name) VALUES ('#{ @name }') RETURNING id"
    user = SqlRunner.run( sql ).first
    @id = user['id'].to_i
  end

  def locations()
    sql = "SELECT locations.* FROM locations
    INNER JOIN visits
    ON locations.id = visists.location_id
    WHERE visits.user_id = #{@id}"
    return User.map_items(sql)
  end

  def self.all()
    sql = "SELECT * FROM users"
    return User.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM users"
    SqlRunner.run(sql)
  end

  def self.map_items(sql)
    user_hashes = SqlRunner.run(sql)
    result = user_hashes.map {|user_hash| User.new(user_hash)}
    return result
  end

end
