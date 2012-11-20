# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scholarship do
    org "MyString"
    schol "MyString"
    descrip "MyText"
    gpa 1.5
    infourl "MyString"
    appyurl "MyString"
  end
end
