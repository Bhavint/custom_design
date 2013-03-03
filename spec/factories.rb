FactoryGirl.define do
  factory :user do
    name     "Bhavin Thakkar"
    email    "bhavin@example.com"
    password "foobar123"
    password_confirmation "foobar123"
 
    factory :admin do
     	name     "Bhavin Thakkar"
   	 	email    "bhavin2@example.com"
    	password "foobar123"
    	password_confirmation "foobar123"
    	admin true
    end
  end
end
