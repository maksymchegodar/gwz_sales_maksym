SELECT  
    c.id AS category_id,
    c.name AS category_name,
    c.description AS category_description,
    c.created_at AS category_created_at,
    c.updated_at AS category_updated_at,
    COUNT(p.id) AS product_count
FROM 
    categories c
LEFT JOIN
    products p ON c.id = p.category_id
GROUP BY
    c.id, c.name, c.description, c.created_at, c.updated_at
ORDER BY
    c.name ASC;
-- This SQL query retrieves information about categories and the count of products in each category.    