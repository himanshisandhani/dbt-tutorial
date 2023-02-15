

-- Macro to standardize date format with BigQuery SQL
{% macro new_date_format(dt) %}
coalesce(safe.parse_date('%Y-%m-%d', {{ dt }}), 
          safe.parse_date('%d/%m/%y', {{ dt }}), 
          safe.parse_date('%Y/%m/%d', {{ dt }}))
{% endmacro %}

