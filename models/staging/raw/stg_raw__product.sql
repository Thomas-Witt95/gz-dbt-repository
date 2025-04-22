with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        cast(purchse_price AS Float64) AS Purchase_price

    from source

)

select * from renamed
