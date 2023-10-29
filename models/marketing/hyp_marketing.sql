{{ config(groups='marketing')}}

SELECT * FROM {{ ref("orders") }}

{# #path to check the access  #}