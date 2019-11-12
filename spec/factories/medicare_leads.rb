FactoryGirl.define do
  factory :medicare_lead do
    name "MyString"
    phone "MyString"
    zip "MyString"
    supplement_plans false
    advantage_plan_part_c false
    perscription_drug_plan_part_d false
    agreement_checked false
  end
end
