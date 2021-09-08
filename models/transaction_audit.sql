with transaction_audit as (

    select * from {{ ref('stg_transaction_audit') }}

),

final as (

    select
        *
    from stg_transaction_audit
)

select * from final
