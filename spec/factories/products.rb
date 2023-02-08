FactoryBot.define do
  factory :product do
    title { 'Denim Jacket' }
    short_description {'Each factory has a name and a set of attributes. The name is used to guess the class of the object by default '}
    price { 250 }
  end
end
