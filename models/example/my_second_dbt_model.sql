
-- Use the `ref` function to select from other models

select *
from {{ ref('t_transaction_audit_model') }}
where id = 1
