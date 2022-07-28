--  Insert Into Resturant Table  --
INSERT INTO Restaurant
VALUES 
(
'Bread And Butter',
'https://images.deliveryhero.io/image/talabat/restaurants/IMG-20210309-WA0016_637510822629368386.jpg?width=180',
'Mansoura',
'Bread And Butter is a restaurant located in Egypt, serving a selection of Foul, Pasta, Koshary that delivers across Mansoura University.Thier best selling dishes are French Fries, Foul With Tahina, Alexandrian Foul and Orzo Soup, although they have a variety of dishes and meals to choose from like Foul, Pasta, Koshary.'
),
(
'KFC',
'https://images.deliveryhero.io/image/talabat/restaurants/1_637346652525108034.jpg?width=180',
'Mansoura',
'KFC is a restaurant located in Egypt, serving a selection of Fried chicken, Sandwiches, Fast Food that delivers across 1st District , 23rd July, 2nd District , 3rd District and 45 Street'
),
(
'GAD',
'https://images.deliveryhero.io/image/talabat/restaurants/Logo_637289616457532834.jpg?width=180',
'Alexandria',
'GAD is a restaurant located in Egypt, serving a selection of Sandwiches, Breakfast, Falafel that delivers across 6th of October - El Hay El Motamyez, El Ataren, El Sheikh Zayed - El Hay 1, Haram - Mansoureya and Miami - Cars Club.'
),
(
'Alexandria Fresh Fruits',
'https://images.deliveryhero.io/image/talabat/restaurants/WhatsApp_Image_2021-_637473516595085089.jpeg?width=180',
'Alexandria',
'Alexandria Fresh Fruits is a grocery store near you, located in Egypt, serving a selection of groceries that delivers across El Hadara, Find your online grocery selection of fresh fruits and vegetables, bakery, dairy, beverages, and many more, Order now and enjoy fast delivery!'
)

--  Insert Into Meal Table  --
INSERT INTO Meal
VALUES 
(
'Fruit Salad - 400 Gm',
'https://images.deliveryhero.io/image/talabat/Menuitems/blob_637654854805644709?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
39.99,
(select RestId from Restaurant where RestName='Alexandria Fresh Fruits')
),
(
'Mango Ewais Pieces - 250 Gm',
'https://images.deliveryhero.io/image/talabat/Menuitems/blob_637654855500113494?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
59.99,
(select RestId from Restaurant where RestName='Alexandria Fresh Fruits')
),
(
'Pineapple Pieces - 250 Gm',
'https://images.deliveryhero.io/image/talabat/Menuitems/blob_637654856388550693?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
59.99,
(select RestId from Restaurant where RestName='Alexandria Fresh Fruits')
),
(
'Kiwi Pieces - 250 Gm',
'https://images.deliveryhero.io/image/talabat/Menuitems/blob_637654857316394218?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
39.99,
(select RestId from Restaurant where RestName='Alexandria Fresh Fruits')
),
(
'Falafel With Pastrami Sandwich',
'https://images.deliveryhero.io/image/talabat/Menuitems/Oriental_Sandwiche_637468744956157680.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
12.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'Omelette With Cheese Sandwich',
'https://images.deliveryhero.io/image/talabat/Menuitems/2932022_Talabat_Egypt_int637846672699146580.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
14.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'White Cheese With Tomatoes Sandwich',
'https://images.deliveryhero.io/image/talabat/Menuitems/Oriental_Sandwiche_637468746000118293.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
11.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'Shakshoka Sandwich',
'https://images.deliveryhero.io/image/talabat/Menuitems/Oriental_Sandwiche_637468745988568581.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
11.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'Falafel Classic',
'https://images.deliveryhero.io/image/talabat/Menuitems/Oriental_Sandwiche_637468744956157680.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
12.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'Cheese Sandwich',
'https://images.deliveryhero.io/image/talabat/Menuitems/2932022_Talabat_Egypt_int637846672699146580.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
14.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'White Cheese Sandwich',
'https://images.deliveryhero.io/image/talabat/Menuitems/Oriental_Sandwiche_637468746000118293.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
11.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'Fries Sandwich',
'https://images.deliveryhero.io/image/talabat/Menuitems/Oriental_Sandwiche_637468745988568581.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
11.99,
(select RestId from Restaurant where RestName='GAD')
),
(
'Double Down Sandwich - Spicy',
'https://images.deliveryhero.io/image/talabat/Menuitems/C1B6DD54BD72B56BC25134FC39BE840D?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
71.99,
(select RestId from Restaurant where RestName='KFC')
),
(
'Monster Combo - Large',
'https://images.deliveryhero.io/image/talabat/Menuitems/C9CEC05AB9058CAF853F396463C138AE?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
121.99,
(select RestId from Restaurant where RestName='KFC')
),
(
'French Fries',
'https://images.deliveryhero.io/image/talabat/Menuitems/19OCT20_TALABAT_UAE__637521957987273567.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
15.99,
(select RestId from Restaurant where RestName='Bread And Butter')
),
(
'Foul With Tahina',
'https://images.deliveryhero.io/image/talabat/Menuitems/_MG_3322_637521951866985166.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
7.99,
(select RestId from Restaurant where RestName='Bread And Butter')
),
(
'Orzo Soup',
'https://images.deliveryhero.io/image/talabat/Menuitems/%D8%B4%D9%88%D8%B1%D8%A8%D8%A9_%D9%84%D8%B3%D8%A7%D9%86_%D8%A7%D9%84%D8%B9%D8%B5%D9%81%D9%88%D8%B1_637496145451674555.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
15.00,
(select RestId from Restaurant where RestName='Bread And Butter')
),
(
'Friscas Fries',
'https://images.deliveryhero.io/image/talabat/Menuitems/19OCT20_TALABAT_UAE__637521957987273567.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
15.99,
(select RestId from Restaurant where RestName='Bread And Butter')
),
(
'Foul Classic',
'https://images.deliveryhero.io/image/talabat/Menuitems/_MG_3322_637521951866985166.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
7.99,
(select RestId from Restaurant where RestName='Bread And Butter')
),
(
'Soup',
'https://images.deliveryhero.io/image/talabat/Menuitems/%D8%B4%D9%88%D8%B1%D8%A8%D8%A9_%D9%84%D8%B3%D8%A7%D9%86_%D8%A7%D9%84%D8%B9%D8%B5%D9%81%D9%88%D8%B1_637496145451674555.jpg?width=172&amp;height=172',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in odio in magna ullamcorper dapibus sed non orci. Nunc sagittis, odio nec sollicitudin feugiat,',
15.00,
(select RestId from Restaurant where RestName='Bread And Butter')
)