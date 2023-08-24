
tanzu accelerator generate-from-local --accelerator-path citizen-accelerator="$(pwd)" --server-url  https://tap-gui.tap-powerful-sloth.tapsandbox.com --options '{"usePostgresCheckbox": true, "postgresUrl":"/citizens", "postgresUsername":"postgres", "postgresPassword":"postgres"}' -o "./citizen-accelerator/"

tanzu accelerator create citizen-accelerator --git-repository https://github.com/cpulcini2003/citizen-acceleratorV1 --git-branch main

tanzu service class-claim create customer-database --class postgresql-unmanaged -n cpu

tanzu services class-claims get customer-database --namespace cpu

Claim Reference: 
  services.apps.tanzu.vmware.com/v1alpha1:ClassClaim:customer-database
