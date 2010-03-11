module SaveToMongoKeysOnly
  def self.included(base)
    base.extend ClassMethods
  end
  module ClassMethods
    def save_to_mongo_keys_only
      true
    end
  end
end
