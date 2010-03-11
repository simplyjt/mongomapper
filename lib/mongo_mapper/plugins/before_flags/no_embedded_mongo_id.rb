module NoEmbeddedMongoId
  def self.included(base)
    base.extend ClassMethods
  end
  module ClassMethods
    def no_embedded_mongo_id
      true
    end
  end
end
