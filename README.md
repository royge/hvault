# My Personal Vault Configuration

## Pre-requisites

- [docker](https://www.docker.com/)
- [docker-compose](https://github.com/docker/compose)

## Run Vault Server

1. Run the server

    `$ docker-compose up -d`

1. Open [Vault UI](http://127.0.0.1:8200) in your browser and follow the instructions. Don't forget to
   download the keys.

## How to Use from CLI

On other terminal window run the following steps.

1. Export vault server address to environment variables.

    ```
    $ export VAULT_ADDR=http://127.0.0.1:8200
    ```

1. Add `VAULT_TOKEN` environment variable with the value of your `root token`.

    ```
    $ export VAULT_TOKEN=<your-root-token>
    ```

## Writing your secrets from CLI

You should do the preparation steps prior to this step.

    $ vault write secret/whatever key=value

If writing a file prepend `@` to the value. Example: key=@value where value
is the filename.

## Reading your secrets from CLI

You should do the preparation steps prior to this step.

    $ vault read secret/whatever

## Deleting your secrets from CLI

You should do the preparation steps prior to this step.

    $ vault delete secret/whatever

## Listing your secrets from CLI

You should do the preparation steps prior to this step.

    $ vault list secret

## Learn More

To learn more about hashicorp vault visit the official
[documentation](https://www.vaultproject.io/docs/).
