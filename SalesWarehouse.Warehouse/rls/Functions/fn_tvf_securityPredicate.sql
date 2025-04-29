CREATE FUNCTION rls.fn_tvf_securityPredicate(@SalesRep AS VARCHAR(60))
    RETURNS TABLE
WITH SCHEMABINDING
AS
    RETURN
        SELECT 1 AS fn_tvf_securityPredicate_result
        WHERE @SalesRep = USER_NAME() or USER_NAME() = 'hr@datalinksystems.co.uk';