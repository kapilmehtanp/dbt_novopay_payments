
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (
    select id,
        transaction_type,
        transaction_sub_type,
        novopay_reference_code,
        accounting_reference_code,
        client_code,
        client_reference_code,
        external_reference_code,
        partner_reference_code,
        additional_reference_code
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
