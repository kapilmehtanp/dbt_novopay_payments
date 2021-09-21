
-- Use the `ref` function to select from other models

select  id,
        transaction_type,
        transaction_sub_type,
        novopay_reference_code,
        accounting_reference_code,
        client_code,
        client_reference_code,
        external_reference_code,
        partner_reference_code,
        additional_reference_code
from {{ ref('my_first_dbt_model') }}
where id = 1
