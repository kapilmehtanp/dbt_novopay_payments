
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/


{{ config(
    materialized="view",
    schema="dk_payments"
) }}

with es_transaction_audit as (
    select
        id,
        transaction_type,
        transaction_sub_type,
        novopay_reference_code,
        accounting_reference_code,
        client_code,
        client_reference_code,
        external_reference_code,
        partner_reference_code,
        additional_reference_code,
        stan

    from dk_payments.transaction_audit

    group by 1
)



select
    transaction_audit_additional_data.novopay_reference_code,
    transaction_audit_additional_data.label,
    transaction_audit_additional_data.value,
    es_transaction_audit.transaction_type,
    es_transaction_audit.transaction_sub_type

from dk_payments.transaction_audit_additional_data

left join es_transaction_audit using (novopay_reference_code)