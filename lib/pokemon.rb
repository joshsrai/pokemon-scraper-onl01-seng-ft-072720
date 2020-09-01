class Pokemon
  attr_accessor :id, :name, :type, :hp, :db
  
  def initialize(id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name 
    @type = type 
    @hp = hp 
    @db = db 
  end
  
  
  
end
