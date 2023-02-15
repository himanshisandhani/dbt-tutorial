
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select name,
       date as old_date,
       {{ new_date_format('date') }} as new_date
from {{ source('jaffle_shop', 'raw_data') }}
--  `dbt-project-test-377818.jaffle_shop.raw_data`
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
