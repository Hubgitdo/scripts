-- there are many ways/methods to gather statistics. DBA should determine what’s best for their own environment.
EXEC DBMS_STATS.gather_schema_stats('&schema', estimate_percent => DBMS_STATS.AUTO_SAMPLE_SIZE, method_opt => 'for all columns size auto', cascade => TRUE);

EXEC DBMS_STATS.gather_schema_stats('&schema', estimate_percent => 15, method_opt => 'for all columns size skewonly', cascade => TRUE);
