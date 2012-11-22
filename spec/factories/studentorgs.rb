# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :studentorg do
    name "MyString"
    description "MyText"
    gpa 1.5
    infourl "MyString"
    applyurl "MyString"
  end
end
