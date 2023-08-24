tanzu accelerator generate-from-local --accelerator-path citizen-accelerator="$(pwd)" \
--server-url https://tap-gui.tap-regular-buck.tapsandbox.com/ \
--options '{"firstConfigurableParameter": "Parameter 1", "usePostgresCheckbox": true, " postgresInfo":"DB-percorso"}' -o "./citizen-accelerator/"