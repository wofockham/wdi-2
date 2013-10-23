Book.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

b1 = Book.create(:title => 'The Joy of Cooking', :cuisine => 'Universal', :chef => 'Chef Boyardee', :image => 'http://1.bp.blogspot.com/_Oj8-dSOGoOA/TD9TBp_BW2I/AAAAAAAAAVc/oh3I-gPCpTo/s1600/joy-of-cooking.jpg')

r1 = Recipe.create(:name => 'Smoked Salmon', :course => 'Dinner', :cooktime => 90, :servingsize => 2, :instructions => 'Smoke some salmon!', :image => 'http://img4-3.myrecipes.timeinc.net/i/recipes/ck/04/06/smoked-salmon-ck-642269-l.jpg')
r2 = Recipe.create(:name => 'Salmon Omelettes', :course => 'Breakfast', :cooktime => 15, :servingsize => 2, :instructions => 'Put some eggs on a salmon!', :image => 'http://4.bp.blogspot.com/_OeYjtwwIWv8/S_ewgNaKNgI/AAAAAAAAETY/Cw0bvFi_hLo/s1600/IMG_0566.jpg')
r3 = Recipe.create(:name => 'Salmon Sandwich', :course => 'Lunch', :cooktime => 10, :servingsize => 2, :instructions => 'Squish fish between bread!', :image => 'http://myrecipes.ucoz.com/_pu/1/65741974.jpg')

i1 = Ingredient.create(:name => 'Salmon', :measurement => 'pound', :cost => 60.0, :image => 'http://scienceblogs.com/zooillogix/wp-content/blogs.dir/253/files/2012/04/i-c264005ab06a3828a4effadd364bcc90-giant%20chinook%20salmon%20battlecreek.jpg')
i2 = Ingredient.create(:name => 'Eggs', :measurement => 'egg', :cost => 4.49, :image => 'http://whatscookingamerica.net/Eggs/EggBasket3.JPG')
i3 = Ingredient.create(:name => 'Tortillas', :measurement => 'tortillas', :cost => 2.29, :image => 'http://www.capital-cooking.com/blog/wp-content/uploads/2012/07/flourTortillas1.gif')
i4 = Ingredient.create(:name => 'Wheat Bread', :measurement => 'loaf', :cost => 3.99, :image => 'http://www.examiner.com/images/blog/EXID24730/images/bread_machine_bread(1).jpg')
i5 = Ingredient.create(:name => 'Lemon', :measurement => 'lemon', :cost => 0.90, :image => 'http://meadowdevor.squarespace.com/storage/money%20lemons.jpg?__SQUARESPACE_CACHEVERSION=1334154925539')
i6 = Ingredient.create(:name => 'Butter', :measurement => 'ounce', :cost => 2.50, :image => 'http://upload.wikimedia.org/wikipedia/commons/4/45/NCI_butter.jpg')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i1, i2, i3]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i2, i3, i4]
