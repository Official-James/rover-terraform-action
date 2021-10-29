# GitHub Action - Rover Terraform Visualiser

This is a GitHub Action to run Rover Terraform Visualiser and output standalone files. You can find the repository to [Rover here](https://github.com/im2nguyen/rover).

## How to use

You will need to create a workflow to checkout your repo:

```yml
- name: Checkout
  uses: actions/checkout@v2
```

The you will need to specify the rover action:

```yml
- name: rover
  uses: Official-James/rover-terraform-action@main
```

You will need to set enviornment variables so when Terraform initialises, it can access the backend and any variables specified. You can achieve this by doing the following:

```yml
- name: rover
  uses: Official-James/rover-terraform-action@main
  env:
    ARM_CLIENT_ID: ***
    ARM_CLIENT_SECRET: ***
    ARM_SUBSCRIPTION_ID: ***
    ARM_TENANT_ID: ***
```

The above is an example of environment variables for Azure. This will be different for each provider.

The final step in the workflow will be the artifacting of the standalone files. You can achieve this by uploading the files:

```yml
- name: Upload rover Artifact
  uses: actions/upload-artifact@v2.2.4
  with:
    name: rover
    path: "./rover.zip"
```

Once you run the workflow, the actions will upload the artifacts and make them available within the run.

## Special Thanks

Special thanks to the contributors of [Rover](https://github.com/im2nguyen/rover).

## Reporting Issues

Please be aware that this is not the project for Rover. This repoistory is to run Rover as a GitHub Action. Any bugs with the action, report it as an issue here. Anything else should be reported to the [Rover repo](https://github.com/im2nguyen/rover).
