-- models/example_model.sql

WITH source_data AS (
    SELECT
        column1,
        column2,
        column3
    FROM {{ ref('source_table') }}  -- Replace 'source_table' with the actual name of your source table
)

SELECT
    column1,
    column2,
    column3,
    column1 + column2 + column3 AS column4
FROM source_data;

