USE food_recipes ;

-- All the vegetarian recipes

SELECT  recipe_name, category_name 
FROM recipes_categories rc
JOIN recipes r 
	USING ( recipe_id )
    
JOIN categories c 
	USING ( category_id)
    
WHERE category_name LIKE "vegetarian";

-- ===========================

-- All the recipes which have Brussels:

SELECT recipe_name, ingredient_text 
FROM recipes
JOIN ingredients 
	USING(ingredient_id)
    
WHERE ingredient_text LIKE "%Brussels%";

-- ===========================

-- All the cakes that do not need baking

SELECT recipe_name, steps_text 
FROM recipes
JOIN steps
 USING (steps_id)
 
WHERE steps_text NOT LIKE "%bake%" AND
			   recipe_name  LIKE "%cake%";

-- ===========================

-- All the vegan and Japanese recipes

SELECT recipe_name, category_name
FROM recipes_categories
JOIN recipes
 USING(recipe_id)
 
JOIN categories 
	USING ( category_id)
    
WHERE category_name LIKE "Japanese" OR
				category_name LIKE "vegan";
