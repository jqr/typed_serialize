ActiveRecord::Schema.define(:version => 0) do

  create_table :mice, :force => true do |t|
    t.text :info
  end

end

class Mouse < ActiveRecord::Base

  typed_serialize :info, Hash, :price, :color

  serialized_accessor :info, :manufacture, :material

  serialized_reader :info, :used, :port_type

  serialized_writer :info, :size, :weight

end