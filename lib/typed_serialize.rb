class ActiveRecord::Base 
  def self.typed_serialize(attr_name, class_name = Object)
    serialize(attr_name, class_name)

    if class_name != Object
      define_method(attr_name) do
        if (value = super).is_a?(self.class.serialized_attributes[attr_name.to_s]) 
          value
        else
          self.send("#{attr_name}=", {})
        end
      end
    end
  end
end