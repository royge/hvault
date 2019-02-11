# My Personal Vault

I use [vault](https://www.vaultproject.io) to manage my secret keys.

## Install vault

Currently latest stable version is `0.10.2`.

1. Download [vault](https://www.vaultproject.io/downloads.html)

    `$ wget https://releases.hashicorp.com/vault/0.10.2/vault_0.10.2_linux_amd64.zip`

1. Extract and install

    `$ unzip vault_0.10.2_linux_amd64.zip`
    `$ sudo mv vault /usr/local/bin/`

## Run Server

We need to run the server as administrator because of mlock.

`$ sudo vault server -config=vault.conf`

## Preparation

On other terminal window run the following steps.

1. Export vault server address to environment variables.

    ```
    $ export VAULT_ADDR=http://127.0.0.1:8200
    ```

1. If first time, initialize vault.

    ```
    $ vault init
    ```

    Don't forget to save the generated keys.

1. Unseal your vault.

    You need to run the following commands three(3) times then provide
    different unseal key in every iteration.

    ```
    $ vault unseal
    ```

1. Add `VAULT_TOKEN` environment variable with the value of your `root token`.

    ```
    $ export VAULT_TOKEN=776af540-c9d0-45b2-8b48-8d85cb4d1b9b
    ```

## Writing your secrets

You should do the preparation steps prior to this step.

    ```
    $ vault write secret/whatever key=value
    ```

    If writing a file prepend `@` to the value. Example: key=@value where value
    is the filename.

## Reading your secrets

You should do the preparation steps prior to this step.

    ```
    $ vault read secret/whatever
    ```

## Deleting your secrets

You should do the preparation steps prior to this step.

    ```
    $ vault delete secret/whatever
    ```

## Listing your secrets

You should do the preparation steps prior to this step.

    ```
    $ vault list secret
    ```

