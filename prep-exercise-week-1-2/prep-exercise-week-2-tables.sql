create database food_recipes;

create table IF NOT EXISTS categories (
category_id int not null auto_increment,
category_name VARCHAR(100) not null,
primary key (category_id)
);

create table IF NOT EXISTS ingredients (
ingredient_id int not null auto_increment,
ingredient_text text not null,
primary key (ingredient_id)
);

create table IF NOT EXISTS steps (
steps_id int not null auto_increment,
steps_text text not null,
primary key (steps_id)
);

create table IF NOT EXISTS recipes (
recipe_id int not null auto_increment,
recipe_name VARCHAR(100) not null,
primary key (recipe_id),
ingredient_id int not null,
steps_id int not null,
FOREIGN KEY(ingredient_id) 
REFERENCES  ingredients(ingredient_id),
FOREIGN KEY(steps_id) 
REFERENCES  steps(steps_id)
);

create table IF NOT EXISTS recipes_categories(
recipe_id int not null,
category_id int not null,
FOREIGN KEY(recipe_id) 
REFERENCES  recipes(recipe_id),
FOREIGN KEY(category_id) 
REFERENCES  categories(category_id)
);

INSERT into ingredients ( ingredient_text )
VALUES 
("Condensed milk, Cream Cheese, Lemon Juice, Pie Crust, Cherry Jam" ), 
("Brussels Sprouts, Lemon juice, Sesame seeds, Pepper, Salt,Olive oil"), 
("Macaroni, Butter, Flour, Salt, Pepper, Milk, Shredded Cheddar cheese"),
("Eggs, Soy sauce, Sugar, Salt, Olive Oil");

insert  into steps (steps_text)
VALUES ("Beat Cream Cheese,
Add condenced Milk and blend,
Add Lemon Juice and blend,
Add the mix to the pie crust,
Spead the Cherry Jam,
Place in refrigerator for 3h."),

("Preheat the oven,
Mix the ingredients in a bowl,
Spread the mix on baking sheet,
Bake for 30'"),

("Cook Macaroni for 8',
Melt butter in a saucepan,
Add flour, salt, pepper and mix ,
Add Milk and mix,
Cook until mix is smooth,
Add cheddar cheese,
Add the macaroni"),

("Beat the eggs,
Add soya sauce, sugar and salt,
Add oil to a sauce pan ,
Bring to medium heat,
Add some mix to the sauce pan,
Let is cook for 1',
Add oil to a sauce pan,
Add some mix to the sauce pan,
Let is cook for 1',
Remove pan from fire");

insert into categories(category_name)
values ("Cake"),("No-Bake"),("Vegetarian"),
			("Vegan"), ("Gluten-Free"), ("Japanese");
            
INSERT into recipes (recipe_name, ingredient_id, steps_id)
VALUES  ("No-Bake Cheesecake", 1, 1),
			    ("Roasted Brussels Sprouts", 2, 2 ),
                ("Mac & Cheese", 3, 3 ),
                ("Tamagoyaki Japanese Omelette", 4, 4);
                
insert into recipes_categories(recipe_id, category_id)
VALUES  (1, 1),
				(1, 2),
                (1, 3),
				(2, 4),
                (2, 5),
                (3, 3),
                (4, 3),
                (4, 6);

