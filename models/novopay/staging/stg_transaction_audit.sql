with source as (
    
    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('stg_transaction_audit') }}

),

renamed as (

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
        stan,
        channel,
        assistor_type,
        assistor_id,
        assistor_employee_id,
        assistor_user_id,
        customer_identifier_type,
        customer_identifier_value,
        transaction_amount,
        transaction_charges,
        total_amount,
        intial_status,
        status,
        partner_status,
        remarks,
        reversal_date,
        reversal_accounting_reference_code,
        reversal_accounting_status,
        partner_recon_status,
        partner_reversal_status,
        partner_recon_date,
        partner_recon_file_name,
        accounting_recon_status,
        accounting_recon_date,
        kit_no,
        created_by,
        created_on,
        approved_by,
        approved_on,
        updated_by,
        updated_on

    from source

)

select * from renamed
