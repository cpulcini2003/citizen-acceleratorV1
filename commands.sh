#USE FRAGMENT
tanzu accelerator generate-from-local --accelerator-path citizen-accelerator="$(pwd)" --fragment-names tap-workload --server-url https://tap-gui.tapv-magical-gelding.tapsandbox.com --options '{"usePostgresCheckbox": true}' -o "./citizen1/"





git add .
git commit -m "accelerator-commit1"
git push -u origin main
[main e581705] accelerator-commit1
 1 file changed, 5 insertions(+)
Username for 'https://github.com': cpulcini2003
Password for 'https://cpulcini2003@github.com': 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



tanzu accelerator create citizen-accelerator --git-repository https://github.com/cpulcini2003/citizen-acceleratorV1 --git-branch main

tanzu accelerator delete citizen-accelerator

tanzu service class-claim create citizen-database --class postgresql-unmanaged -n cpu
tanzu services class-claims get citizen-database --namespace cpu

Claim Reference: 
  services.apps.tanzu.vmware.com/v1alpha1:ClassClaim:customer-database




# 'spring.datasource.url=' + #postgresUrl.toLowerCase() + '
# spring.datasource.username=' + #postgresUsername + '
# spring.datasource.password=' + #postgresPassword + '
