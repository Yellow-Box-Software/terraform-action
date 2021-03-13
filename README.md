# terraform-action

Literally just the 0.14.7 binary in a container, nothing more, nothing less!

Example usage, e.g. a terraform plan:
```
    - name: Terraform Plan
      uses: Yellow-Box-Software/terraform-action@v2.5
      with:
        args: "plan -var-file=vars/dev.tfvars"
      env:
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```
