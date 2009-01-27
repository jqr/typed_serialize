class ActiveRecord::Base 
  def self.typed_serialize(attr_name, class_name)
    serialize(attr_name, class_name)

    define_method(attr_name) do
      expected_class = self.class.serialized_attributes[attr_name.to_s]
      if (value = super).is_a?(expected_class) 
        value
      else
        send("#{attr_name}=", expected_class.new)
      end
    end
  end
end