class Pokemon
  attr_accessor :id, :name, :type, :hp, :db
  
  def initialize(id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name 
    @type = type 
    @hp = hp 
    @db = db 
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) Values (?, ?)", name, type)
  end
  
  def self.find(id, db)
    info = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: info[0], name: info[1], type: info[2], hp: info[3], db: db)
  end
end
