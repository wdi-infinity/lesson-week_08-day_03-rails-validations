# Rails Active Record Migrations + Validations Exercise

We just learned about Rails Model migrations and validations. Let's get some more practice on what we covered by adding onto the app we just built during the lesson. You can follow along with the lesson plan to complete the steps below.
 
1.  Create a `Car` resource that has `make`, `model`, `year`, `moonroof`, `dealership` fields. Remember to designate the correct data type for each!
```rb
rails g scaffold Car make:string model:string year: integer moonroof:boolean dealership:string
```
2. Run the command that will update our `schema.rb` and add the new model to our database.
```rb
bin/rails db:migrate
```
3. Oops, we forgot to add a `color` field to `Car`. Go ahead and generate a migration to add that field to our schema.
```rb 
rails generate migration AddColorToCars color:string

bin/rails db:migrate
```
4. We really don't care where we bought our vehicle so let's remove the `dealership` field from our schema.
```rb
rails generate migration RemoveDealershipFromCars dealership:string

bin/rails db:migrate
```
5. Add validations to require that all of our fields are present in order for a record to be persisted to the database. 
```rb
validates  :make, :model, :year, :sunroof, :color, presence: true
```
6. Add a validation that `year` contains 4 digits and provide an error message if the year is too short.
```rb
 validates :year,  length: {
       maximum: 4,
       minimum:4,
       too_short:"year must be %{count} digits"
   }
 ```
7. Generate a migration that will rename the `moonroof` field to `sunroof`.
```rb
rails g migration ChangeColumnName 

# at the generated migration file modify the change mithod to this:
def change
   rename_column :cars, :moonroof, :sunroof
 end

 bin/rails db:migrate
```
8. Enter `rails console` and add 4 cars to your database.
```rb
rails console

# 4 times
Car.create(make: 'Toyota', model: 'Camry',  year:2019, sunroof:true, color:'black') 
```
9. Update the color of the first `Car` in your database.
```rb
Car.first.update(color:'Red')
```
10. Delete the 3rd `Car` in your database.
```rb
Car.find(3).destroy
```
### BONUS

Set up a relationship between `Person` and `Car` where a car `belongs_to` a person and a Person `has_many` cars. What steps are required?
```rb
# well this is a long process, put i'm gonna mention here the basics to set the this type of relationship


# This will add a person_id column to the cars table and it will be a foreign key column which has a reference to one person!
rails g migration AddPersonToCar person:reference

bin/rails db:migrate

# add the association type and value to Car model
belongs_to :person

#  add the association type and value to Person model
has_many :cars

# change the routes to look like this
resources :people do
    resources :cars
  end 

# and for the rest check my code .. 🏃🏻‍♀️
```