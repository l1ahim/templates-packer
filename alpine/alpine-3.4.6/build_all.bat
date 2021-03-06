for %%f in (vars-alpine-3.4.6-*.json) do (
  for %%g in (alpine-3.4.6-minimal.json alpine-3.4.6-ansible.json alpine-3.4.6-xorg.json) do (
    packer build -var-file=%%f %* %%g
  )
)
packer build -var-file=vars-alpine-3.4.6-x86_64.json %* alpine-3.4.6-docker.json

for %%f in (vars-alpine-virt-3.4.6-*.json) do (
  for %%g in (alpine-3.4.6-minimal.json alpine-3.4.6-ansible.json alpine-3.4.6-xorg.json) do (
    packer build -var-file=%%f %* %%g
  )
)
packer build -var-file=vars-alpine-virt-3.4.6-x86_64.json %* alpine-3.4.6-docker.json
