tanzu service class-claim create DBNAME-db-claim --class postgresql-unmanaged -n cpu

watch tanzu services class-claims get DBNAME-db-claim -n cpu