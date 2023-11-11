create function function_name()
    returns TABLE(card_id integer, number_value double precision, select_value character varying)
    language plpgsql
as
$$
BEGIN

RETURN QUERY

SELECT 1, 2.3, 'abc';

END;
$$;