SELECT
    date_values.card_uuid,
    date_values.field_uuid,
    date_values.value AS date_value,
    checkbox_values.value AS checkbox_value,
    number_values.value AS number_value,
    select_options.value AS select_value,
    select_options.color AS select_color,
    text_values.value AS text_value
FROM date_values
LEFT JOIN checkbox_values ON date_values.field_uuid = checkbox_values.field_uuid
LEFT JOIN number_values ON date_values.field_uuid = number_values.field_uuid
LEFT JOIN select_values ON date_values.field_uuid = select_values.field_uuid
LEFT JOIN select_options ON select_values.select_option_uuid = select_options.select_option_uuid
LEFT JOIN text_values ON date_values.field_uuid = text_values.field_uuid

UNION

SELECT
    checkbox_values.card_uuid,
    checkbox_values.field_uuid,
    date_values.value AS date_value,
    checkbox_values.value AS checkbox_value,
    number_values.value AS number_value,
    select_options.value AS select_value,
    select_options.color AS select_color,
    text_values.value AS text_value
FROM checkbox_values
LEFT JOIN date_values ON checkbox_values.field_uuid = date_values.field_uuid
LEFT JOIN number_values ON checkbox_values.field_uuid = number_values.field_uuid
LEFT JOIN select_values ON checkbox_values.field_uuid = select_values.field_uuid
LEFT JOIN select_options ON select_values.select_option_uuid = select_options.select_option_uuid
LEFT JOIN text_values ON checkbox_values.field_uuid = text_values.field_uuid

UNION

SELECT
    number_values.card_uuid,
    number_values.field_uuid,
    date_values.value AS date_value,
    checkbox_values.value AS checkbox_value,
    number_values.value AS number_value,
    select_options.value AS select_value,
    select_options.color AS select_color,
    text_values.value AS text_value
FROM number_values
LEFT JOIN date_values ON number_values.field_uuid = date_values.field_uuid
LEFT JOIN checkbox_values ON number_values.field_uuid = checkbox_values.field_uuid
LEFT JOIN select_values ON number_values.field_uuid = select_values.field_uuid
LEFT JOIN select_options ON select_values.select_option_uuid = select_options.select_option_uuid
LEFT JOIN text_values ON number_values.field_uuid = text_values.field_uuid

UNION

SELECT
    select_values.card_uuid,
    select_values.field_uuid,
    date_values.value AS date_value,
    checkbox_values.value AS checkbox_value,
    number_values.value AS number_value,
    select_options.value AS select_value,
    select_options.color AS select_color,
    text_values.value AS text_value
FROM select_values
LEFT JOIN date_values ON select_values.field_uuid = date_values.field_uuid
LEFT JOIN checkbox_values ON select_values.field_uuid = checkbox_values.field_uuid
LEFT JOIN number_values ON select_values.field_uuid = number_values.field_uuid
LEFT JOIN select_options ON select_values.select_option_uuid = select_options.select_option_uuid
LEFT JOIN text_values ON select_values.field_uuid = text_values.field_uuid

UNION

SELECT
    text_values.card_uuid,
    text_values.field_uuid,
    date_values.value AS date_value,
    checkbox_values.value AS checkbox_value,
    number_values.value AS number_value,
    select_options.value AS select_value,
    select_options.color AS select_color,
    text_values.value AS text_value
FROM text_values
LEFT JOIN date_values ON text_values.field_uuid = date_values.field_uuid
LEFT JOIN checkbox_values ON text_values.field_uuid = checkbox_values.field_uuid
LEFT JOIN number_values ON text_values.field_uuid = number_values.field_uuid
LEFT JOIN select_values ON text_values.field_uuid = select_values.field_uuid
LEFT JOIN select_options ON select_values.select_option_uuid = select_options.select_option_uuid;
