rails new chat

cd chat

rails g model Person name:string email:string type:string

rake db:migrate

cd app/models

touch user.rb

echo "class User < Person
	has_many :posts
end" >> user.rb

touch admin.rb

echo "class Admin < Person
	has_many :accounts
end" >> admin.rb

rails g model Post content:string description:string user:references

rails g model Account ac_no:integer admin:references

rake db:migrate

rails c

User.create(name:'teju',email:'teju@gmail.com')
User.create(name:'abhay',email:'anikam@gmail.com')
User.create(name:'pallavi',email:'pallavi@gmail.com')

admin=Admin.create(name:'dhiraj',email:'dhiraj@gmail.com')

user=User.find_by(id:1)
user.posts << Post.new(content:'ruby',description:'this message is for ruby developer')

user=User.find_by(id:3)
t=user.posts.build(content:'php',description:'php developer message')
t.save

admin.accounts << Account.new(acc_no:12)

user=User.find_by(id:3)
t=user.posts.build(content:'php',description:'php developer message')
t.save




