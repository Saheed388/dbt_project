{% test col_greater_than(model, column_name, value)%}

        select
            {{column_name}} as row_that_failed
        from 
            {{model}}
        where not {{column_name}} >= {{value}}

{%endtest%}

{# This code got 824 result where column name is less than value #}
 {# Got 28274 results as greater than #}