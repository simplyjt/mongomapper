class Sequence
  include MongoMapper::Document
  
  key :_id, String
  key :v, Integer, :default => 0 

  def self.next_id(id)
    database.command(OrderedHash['findandmodify', 'sequences', 'query', id, 'update', {'$inc' => {'v' => 1}}, 'new', true])['value']['v']
  end
end
