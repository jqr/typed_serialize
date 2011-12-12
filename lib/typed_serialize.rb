ActiveRecord::Base.instance_eval do

  def typed_serialize(attr_name, class_name, *attributes)
    serialize(attr_name, class_name)

    define_method(attr_name) do
      if (value = super()).is_a?(class_name)
        value
      else
        send("#{attr_name}=", class_name.new)
      end
    end
    serialized_accessor(attr_name, attributes)
  end

  def serialized_accessor(holder, *attributes)
    serialized_reader(holder, attributes)
    serialized_writer(holder, attributes)
  end

  def serialized_reader(holder, *attributes)
    attributes.flatten.each do |attr_name|
      define_method(attr_name) do
        send(holder)[attr_name]
      end
    end
  end

  def serialized_writer(holder, *attributes)
    attributes.flatten.each do |attr_name|
      define_method("#{attr_name}=") do |value|
        send(holder)[attr_name] = value
      end
    end
  end

end
