class Types::DateTimeType < GraphQL::Schema::Scalar
  graphql_name 'DateTime'

  def self.coerce_input(input_value, _context)
    Time.zone.parse(input_value)
  end

  def self.coerce_result(ruby_value, _context)
    ruby_value.utc.iso8601
  end
end
