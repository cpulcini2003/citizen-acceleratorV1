tanzu service class-claim create DBNAME --class postgresql-unmanaged -n cpu

watch tanzu services class-claims get DBNAME -n cpu

