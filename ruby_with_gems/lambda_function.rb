# Dummy class
class DumDum
  attr_accessor :name, :description

  def as_json(options={})
    {
      name: @name,
      age: @age
    }
  end
end

def lambda_handler(event:, context:)
  dumdum = DumDum.new
  dumdum.name = 'dumdum1'
  dumdum.description = 'I am a dumdum too!'
  { statusCode: 200, body: dumdum.as_json.to_s }
end
