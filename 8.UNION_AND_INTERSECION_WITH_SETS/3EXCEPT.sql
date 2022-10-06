



  (
  SELECT
    id,name
  FROM
    products
  ORDER BY
    price  DESC
  LIMIT
    4
)
EXCEPT
  (
    SELECT
      id,name
    FROM
      products
    ORDER BY
      price/ weight DESC
    LIMIT
      6
  )


id	name
80	Small Fresh Gloves
7	Incredible Granite Mouse
38	Awesome Fresh Keyboard
46	Incredible Granite Bacon

EXCEPT

  id	name
7	Incredible Granite Mouse
86	Refined Concrete Pants
24	Small Plastic Soap
1	Practical Fresh Shirt
56	Gorgeous Plastic Sausages
8	Gorgeous Rubber Ball



-- RESULT FOR ABOVE

80	Small Fresh Gloves
38	Awesome Fresh Keyboard
46	Incredible Granite Bacon




  id	name
7	Incredible Granite Mouse
86	Refined Concrete Pants
24	Small Plastic Soap
1	Practical Fresh Shirt
56	Gorgeous Plastic Sausages
8	Gorgeous Rubber Ball

EXCEPT

id	name
80	Small Fresh Gloves
7	Incredible Granite Mouse
38	Awesome Fresh Keyboard
46	Incredible Granite Bacon

-- RESULT FOR ABOVE


7	Incredible Granite Mouse
86	Refined Concrete Pants
24	Small Plastic Soap
1	Practical Fresh Shirt
56	Gorgeous Plastic Sausages
8	Gorgeous Rubber Ball